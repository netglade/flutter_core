import 'package:netglade_utils/netglade_utils.dart';
import 'package:test/test.dart';

void main() {
  group('distinct', () {
    test('distinct', () {
      expect([1, 2, 3].distinct(), equals({1, 2, 3}));
    });

    test('with duplicates', () {
      expect([2, 4, 4, 5, 6, 6, 6].distinct(), equals({2, 4, 5, 6}));
    });

    test('empty', () {
      expect(<int>[].distinct(), equals(<int>{}));
    });
  });

  group('distinct by', () {
    test('distinct', () {
      expect([[1,3], [2,5], [3,3]].distinctBy((e) => e.firstOrNull), equals({[1,3], [2,5], [3,3]}));
    });

    test('with duplicates', () {
      expect([[1,3], [2,5], [1,6], [1,0]].distinctBy((e) => e.firstOrNull), equals({[1,3], [2,5]}));
    });

    test('empty', () {
      expect(<int>[].distinctBy((e) => e*e), equals(<int>{}));
    });
  });
}
