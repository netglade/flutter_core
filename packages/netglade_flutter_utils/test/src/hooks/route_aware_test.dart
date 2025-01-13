import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:netglade_flutter_utils/src/hooks/hooks.dart';

class _RouteFake extends Fake implements MaterialPageRoute<void> {}

class _MockPage extends StatelessWidget {
  static final UniqueKey _btnKey = UniqueKey();

  const _MockPage();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(key: _btnKey, onPressed: () => Navigator.of(context).pop(), child: const Text('Mock Page'));
  }
}

class _UnderTestWidget extends HookWidget {
  final ValueSetter<String> onAction;
  final RouteObserver routeObserver;

  static final UniqueKey _popBtnKey = UniqueKey();
  static final UniqueKey _pushNextBtnKey = UniqueKey();
  static final UniqueKey _statusKey = UniqueKey();

  const _UnderTestWidget({
    required this.routeObserver,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    final state = useState<String>('??');
    final _ = useRouteAware(
      observer: routeObserver,
      onDidPush: () {
        state.value = 'didPush';
        onAction('didPush');
      },
      onDidPopNext: () {
        state.value = 'didPopNext';
        onAction('didPopNext');
      },
      onDidPop: () {
        state.value = 'didPop';
        onAction('didPop');
      },
      onDidPushNext: () {
        state.value = 'didPushNext';
        onAction('didPushNext');
      },
    );

    return Column(
      children: [
        Text(state.value, key: _statusKey),
        ElevatedButton(
          key: _popBtnKey,
          onPressed: () => _handlePopBtnPressed(context),
          child: const Text('pop'),
        ),
        ElevatedButton(
          key: _pushNextBtnKey,
          onPressed: () => _handlePushNextBtnPressed(context),
          child: const Text('push next'),
        ),
      ],
    );
  }

  void _handlePopBtnPressed(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _handlePushNextBtnPressed(BuildContext context) {
    unawaited(Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const _MockPage())));
  }
}

void main() {
  final observer = RouteObserver();

  setUp(() {
    registerFallbackValue(_RouteFake());
  });

  testWidgets('On subcribe, didPush is called', (tester) async {
    var action = '';
    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [observer],
        home: _UnderTestWidget(
          routeObserver: observer,
          onAction: (v) => action = v,
        ),
      ),
    );

    expect(find.byType(Text), findsNWidgets(3));
    expect(find.text('didPush'), findsOneWidget);
    expect(action, equals('didPush'));
  });

  testWidgets('DidPop is called', (tester) async {
    var action = '';
    final pushBtn = UniqueKey();

    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [observer],
        home: Builder(
          builder: (context) => ElevatedButton(
            key: pushBtn,
            onPressed: () => unawaited(
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) {
                    return _UnderTestWidget(
                      routeObserver: observer,
                      onAction: (v) => action = v,
                    );
                  },
                ),
              ),
            ),
            child: const Text('Push me'),
          ),
        ),
      ),
    );

    await tester.tap(find.byKey(pushBtn));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(_UnderTestWidget._popBtnKey));
    await tester.pumpAndSettle();
    expect(action, equals('didPop'));
  });

  testWidgets('DidPushNext and DidPopNext are called', (tester) async {
    var action = '';
    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [observer],
        home: Builder(
          builder: (context) => _UnderTestWidget(
            routeObserver: observer,
            onAction: (v) {
              action = v;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byKey(_UnderTestWidget._pushNextBtnKey));
    await tester.pumpAndSettle();

    expect(action, equals('didPushNext'));
    expect(find.byKey(_MockPage._btnKey), findsOneWidget);

    await tester.tap(find.byKey(_MockPage._btnKey));
    await tester.pumpAndSettle();

    expect(action, equals('didPopNext'));
    final status = find.byKey(_UnderTestWidget._statusKey);
    expect(status, findsOneWidget);
    expect(tester.firstWidget<Text>(status).data, equals('didPopNext'));
  });
}
