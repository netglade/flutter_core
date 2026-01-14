// ignore_for_file: prefer_const_declarations, unnecessary_nullable_for_final_variable_declarations, omit_local_variable_types, prefer-boolean-prefixes

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
        // arrange
        final String value = '';

        // act
        final processed = value.isBlank;

        // assert
        expect(processed, isTrue);
      });

      test('message with whitespaces is isBlank', () {
        // arrange
        final String value = '   ';

        // act
        final processed = value.isBlank;

        // assert
        expect(processed, isTrue);
      });

      test('message with non-whitespace characters is not isBlank', () {
        // arrange
        final String value = 'xxx';

        // act
        final processed = value.isBlank;

        // assert
        expect(processed, isFalse);
      });
    });

    group('on String?', () {
      test('empty message is isBlank', () {
        // arrange
        final String? value = '';

        // act
        final processed = value?.isBlank;

        // assert
        expect(processed, isTrue);
      });

      test('null message is not isBlank', () {
        // arrange
        final String? value = null;

        // act
        final processed = value?.isBlank;

        // assert
        expect(processed, isNull);
      });

      test('message with whitespaces is isBlank', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value?.isBlank;

        // assert
        expect(processed, isTrue);
      });

      test('message with non-whitespace characters is not isBlank', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value?.isBlank;

        // assert
        expect(processed, isFalse);
      });
    });
  });

  group('isNotBlank', () {
    group('on String', () {
      test('empty message is not isNotBlank', () {
        // arrange
        final String value = '';

        // act
        final processed = value.isNotBlank;

        // assert
        expect(processed, isFalse);
      });

      test('message with whitespaces is not isNotBlank', () {
        // arrange
        final String value = '   ';

        // act
        final processed = value.isNotBlank;

        // assert
        expect(processed, isFalse);
      });

      test('message with non-whitespace characters is isNotBlank', () {
        // arrange
        final String value = 'xxx';

        // act
        final processed = value.isNotBlank;

        // assert
        expect(processed, isTrue);
      });
    });

    group('on String?', () {
      test('empty message is not isNotBlank', () {
        // arrange
        final String? value = '';

        // act
        final processed = value?.isNotBlank;

        // assert
        expect(processed, isFalse);
      });

      test('message is null is null', () {
        // arrange
        final String? value = null;

        // act
        final processed = value?.isNotBlank;

        // assert
        expect(processed, isNull);
      });

      test('message has whitespaces is not isNotBlank', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value?.isNotBlank;

        // assert
        expect(processed, isFalse);
      });

      test('message has non-whitespace characters is isNotBlank', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value?.isNotBlank;

        // assert
        expect(processed, isTrue);
      });
    });
  });

  group('isNullOrBlank', () {
    group('on String?', () {
      test('empty message is isNullOrBlank', () {
        // arrange
        final String? value = '';

        // act
        final processed = value.isNullOrBlank;

        // assert
        expect(processed, isTrue);
      });

      test('null message is isNullOrBlank', () {
        // arrange
        final String? value = null;

        // act
        final processed = value.isNullOrBlank;

        // assert
        expect(processed, isTrue);
      });

      test('message with whitespaces is isNullOrBlank', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value.isNullOrBlank;

        // assert
        expect(processed, isTrue);
      });

      test('message with non-whitespace characters is not isNullOrBlank', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value.isNullOrBlank;

        // assert
        expect(processed, isFalse);
      });
    });
  });

  group('isNullOrEmpty', () {
    group('on String?', () {
      test('empty message is isNullOrEmpty', () {
        // arrange
        final String? value = '';

        // act
        final processed = value.isNullOrEmpty;

        // assert
        expect(processed, isTrue);
      });

      test('null message is isNullOrEmpty', () {
        // arrange
        final String? value = null;

        // act
        final processed = value.isNullOrEmpty;

        // assert
        expect(processed, isTrue);
      });

      test('message with whitespaces is not isNullOrEmpty', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value.isNullOrEmpty;

        // assert
        expect(processed, isFalse);
      });

      test('message with non-whitespace characters is not isNullOrEmpty', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value.isNullOrEmpty;

        // assert
        expect(processed, isFalse);
      });
    });
  });

  group('isNotNullNorEmpty', () {
    group('on String?', () {
      test('empty message is not isNotNullNorEmpty', () {
        // arrange
        final String? value = '';

        // act
        final processed = value.isNotNullNorEmpty;

        // assert
        expect(processed, isFalse);
      });

      test('null message is not isNotNullNorEmpty', () {
        // arrange
        final String? value = null;

        // act
        final processed = value.isNotNullNorEmpty;

        // assert
        expect(processed, isFalse);
      });

      test('message with whitespaces is isNotNullNorEmpty', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value.isNotNullNorEmpty;

        // assert
        expect(processed, isTrue);
      });

      test('message with non-whitespace characters is isNotNullNorEmpty', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value.isNotNullNorEmpty;

        // assert
        expect(processed, isTrue);
      });
    });
  });

  group('isNotNullNorBlank', () {
    group('on String?', () {
      test('empty message is not isNotNullNorBlank', () {
        // arrange
        final String? value = '';

        // act
        final processed = value.isNotNullNorBlank;

        // assert
        expect(processed, isFalse);
      });

      test('null message is not isNotNullNorBlank', () {
        // arrange
        final String? value = null;

        // act
        final processed = value.isNotNullNorBlank;

        // assert
        expect(processed, isFalse);
      });

      test('message with whitespaces is not isNotNullNorBlank', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value.isNotNullNorBlank;

        // assert
        expect(processed, isFalse);
      });

      test('message with non-whitespace characters is isNotNullNorBlank', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value.isNotNullNorBlank;

        // assert
        expect(processed, isTrue);
      });
    });
  });

  group('ifEmpty', () {
    group('on String', () {
      test('empty message', () {
        // arrange
        final String value = '';

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals('aaa'));
      });

      test('message with whitespaces', () {
        // arrange
        final String value = '   ';

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals(value));
      });

      test('message with non-whitespace characters', () {
        // arrange
        final String value = 'xxx';

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals(value));
      });
    });

    group('on String?', () {
      test('empty message', () {
        // arrange
        final String? value = '';

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals('aaa'));
      });

      test('null message', () {
        // arrange
        final String? value = null;

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals(value));
      });

      test('message with whitespaces', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals(value));
      });

      test('message with non-whitespace characters', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value.ifEmpty('aaa');

        // assert
        expect(processed, equals(value));
      });
    });
  });

  group('ifBlank', () {
    group('on String', () {
      test('empty message', () {
        // arrange
        final String value = '';

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals('aaa'));
      });

      test('message with whitespaces', () {
        // arrange
        final String value = '   ';

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals('aaa'));
      });

      test('message with non-whitespace characters', () {
        // arrange
        final String value = 'xxx';

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals(value));
      });
    });

    group('on String?', () {
      test('empty message', () {
        // arrange
        final String? value = '';

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals('aaa'));
      });

      test('null message', () {
        // arrange
        final String? value = null;

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals(value));
      });

      test('message with whitespaces', () {
        // arrange
        final String? value = '   ';

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals('aaa'));
      });

      test('message with non-whitespace characters', () {
        // arrange
        final String? value = 'xxx';

        // act
        final processed = value.ifBlank('aaa');

        // assert
        expect(processed, equals(value));
      });
    });

    group('firstLetterUppercase', () {
      test('empty message', () {
        // arrange
        final String value = '';

        // act
        final processed = value.firstLetterUppercase();

        // assert
        expect(processed, equals(''));
      });

      test('message with whitespaces', () {
        // arrange
        final String value = '   ';

        // act
        final processed = value.firstLetterUppercase();

        // assert
        expect(processed, equals(value));
      });

      test('message with non-whitespace characters', () {
        // arrange
        final String value = 'xxx';

        // act
        final processed = value.firstLetterUppercase();

        // assert
        expect(processed, equals('Xxx'));
      });

      test('message with 1 character', () {
        // arrange
        final String value = 'x';

        // act
        final processed = value.firstLetterUppercase();

        // assert
        expect(processed, equals('X'));
      });
    });
  });
}
