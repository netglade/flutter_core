import 'package:flutter/material.dart';
import 'package:netglade_flutter_utils/netglade_flutter_utils.dart';

void main() {
  runApp(const DemoApp());
}

// ignore: prefer-match-file-name, ok for demo
class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Conditional(
        condition: true,
        whenTrue: (context) => const Text('yep'),
        whenFalse: (context) => const Text('nope'),
      ),
    );
  }
}
