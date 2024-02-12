import 'package:collection/collection.dart';
import 'package:netglade_utils/netglade_utils.dart';
import 'package:test/test.dart';

void main() {
  group('distinct by', () {
    test('distinct', () {
      expect(
        [
          [1, 3],
          [2, 5],
          [3, 3],
        ].distinctBy((e) => e.firstOrNull),
        equals({
          [1, 3],
          [2, 5],
          [3, 3],
        }),
      );
    });

    test('with duplicates', () {
      expect(
        [
          [1, 3],
          [2, 5],
          [1, 6],
          [1, 0],
        ].distinctBy((e) => e.firstOrNull),
        equals({
          [1, 3],
          [2, 5],
        }),
      );
    });

    test('empty', () {
      expect(<int>[].distinctBy((e) => e * e), equals(<int>{}));
    });
  });
}
