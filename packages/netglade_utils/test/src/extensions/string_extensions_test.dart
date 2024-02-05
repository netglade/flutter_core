import 'package:netglade_utils/netglade_utils.dart';
import 'package:test/test.dart';

void main() {
  group('lastNCharacters', () {
    test('with negative limit', () {
      expect('abcdefgh'.lastNCharacters(-2), equals(''));
    });

    test('with zero limit', () {
      expect('abcdefgh'.lastNCharacters(0), equals(''));
    });

    test('with positive limit', () {
      expect('abcdefgh'.lastNCharacters(2), equals('gh'));
    });

    test('with positive limit, but over length', () {
      expect('abcdefgh'.lastNCharacters(666), equals('abcdefgh'));
    });
  });

  group('isBlank', () {
    group('on String', () {
      test('empty message is isBlank', () {
        expect(''.isBlank, isTrue);
      });

      test('message with whitespaces is isBlank', () {
        expect('   '.isBlank, isTrue);
      });

      test('message with non-whitespace characters is not isBlank', () {
        expect('xxx'.isBlank, isFalse);
      });
    });

    group('on String?', () {
      test('empty message is isBlank', () {
        expect(''.isBlank, isTrue);
      });

      test('null message is not isBlank', () {
        expect(null.isBlank, isFalse);
      });

      test('message with whitespaces is isBlank', () {
        expect('   '.isBlank, isTrue);
      });

      test('message with non-whitespace characters is not isBlank', () {
        expect('xxx'.isBlank, isFalse);
      });
    });
  });

  group('isNotBlank', () {
    group('on String', () {
      test('empty message is not isNotBlank', () {
        expect(''.isNotBlank, isFalse);
      });

      test('message with whitespaces is not isNotBlank', () {
        expect('   '.isNotBlank, isFalse);
      });

      test('message with non-whitespace characters is isNotBlank', () {
        expect('xxx'.isNotBlank, isTrue);
      });
    });

    group('on String?', () {
      test('empty message is not isNotBlank', () {
        expect(''.isNotBlank, isFalse);
      });

      test('message is null is isNotBlank', () {
        expect(null.isNotBlank, isTrue);
      });

      test('message has whitespaces is not isNotBlank', () {
        expect('   '.isNotBlank, isFalse);
      });

      test('message has non-whitespace characters is isNotBlank', () {
        expect('xxx'.isNotBlank, isTrue);
      });
    });
  });

  group('isNullOrBlank', () {
    group('on String?', () {
      test('empty message is isNullOrBlank', () {
        expect(''.isNullOrBlank, isTrue);
      });

      test('null message is isNullOrBlank', () {
        expect(null.isNullOrBlank, isTrue);
      });

      test('message with whitespaces is isNullOrBlank', () {
        expect('   '.isNullOrBlank, isTrue);
      });

      test('message with non-whitespace characters is not isNullOrBlank', () {
        expect('xxx'.isNullOrBlank, isFalse);
      });
    });
  });

  group('isNullOrEmpty', () {
    group('on String?', () {
      test('empty message is isNullOrEmpty', () {
        expect(''.isNullOrEmpty, isTrue);
      });

      test('null message is isNullOrEmpty', () {
        expect(null.isNullOrEmpty, isTrue);
      });

      test('message with whitespaces is not isNullOrEmpty', () {
        expect('   '.isNullOrEmpty, isFalse);
      });

      test('message with non-whitespace characters is not isNullOrEmpty', () {
        expect('xxx'.isNullOrEmpty, isFalse);
      });
    });
  });

  group('isNotNullNorEmpty', () {
    group('on String?', () {
      test('empty message is not isNotNullNorEmpty', () {
        expect(''.isNotNullNorEmpty, isFalse);
      });

      test('null message is not isNotNullNorEmpty', () {
        expect(null.isNotNullNorEmpty, isFalse);
      });

      test('message with whitespaces is isNotNullNorEmpty', () {
        expect('   '.isNotNullNorEmpty, isTrue);
      });

      test('message with non-whitespace characters is isNotNullNorEmpty', () {
        expect('xxx'.isNotNullNorEmpty, isTrue);
      });
    });
  });
}
