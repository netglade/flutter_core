// ignore_for_file: prefer_const_declarations, unnecessary_nullable_for_final_variable_declarations, omit_local_variable_types

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
        final String value = '';
        expect(value.isBlank, isTrue);
      });

      test('message with whitespaces is isBlank', () {
        final String value = '   ';
        expect(value.isBlank, isTrue);
      });

      test('message with non-whitespace characters is not isBlank', () {
        final String value = 'xxx';
        expect(value.isBlank, isFalse);
      });
    });

    group('on String?', () {
      test('empty message is isBlank', () {
        final String? value = '';
        expect(value?.isBlank, isTrue);
      });

      test('null message is not isBlank', () {
        final String? value = null;
        expect(value?.isBlank, isNull);
      });

      test('message with whitespaces is isBlank', () {
        final String? value = '   ';
        expect(value?.isBlank, isTrue);
      });

      test('message with non-whitespace characters is not isBlank', () {
        final String? value = 'xxx';
        expect(value?.isBlank, isFalse);
      });
    });
  });

  group('isNotBlank', () {
    group('on String', () {
      test('empty message is not isNotBlank', () {
        final String value = '';
        expect(value.isNotBlank, isFalse);
      });

      test('message with whitespaces is not isNotBlank', () {
        final String value = '   ';
        expect(value.isNotBlank, isFalse);
      });

      test('message with non-whitespace characters is isNotBlank', () {
        final String value = 'xxx';
        expect(value.isNotBlank, isTrue);
      });
    });

    group('on String?', () {
      test('empty message is not isNotBlank', () {
        final String? value = '';
        expect(value?.isNotBlank, isFalse);
      });

      test('message is null is null', () {
        final String? value = null;
        expect(value?.isNotBlank, isNull);
      });

      test('message has whitespaces is not isNotBlank', () {
        final String? value = '   ';
        expect(value?.isNotBlank, isFalse);
      });

      test('message has non-whitespace characters is isNotBlank', () {
        final String? value = 'xxx';
        expect(value?.isNotBlank, isTrue);
      });
    });
  });

  group('isNullOrBlank', () {
    group('on String?', () {
      test('empty message is isNullOrBlank', () {
        final String? value = '';
        expect(value.isNullOrBlank, isTrue);
      });

      test('null message is isNullOrBlank', () {
        final String? value = null;
        expect(value.isNullOrBlank, isTrue);
      });

      test('message with whitespaces is isNullOrBlank', () {
        final String? value = '   ';
        expect(value.isNullOrBlank, isTrue);
      });

      test('message with non-whitespace characters is not isNullOrBlank', () {
        final String? value = 'xxx';
        expect(value.isNullOrBlank, isFalse);
      });
    });
  });

  group('isNullOrEmpty', () {
    group('on String?', () {
      test('empty message is isNullOrEmpty', () {
        final String? value = '';
        expect(value.isNullOrEmpty, isTrue);
      });

      test('null message is isNullOrEmpty', () {
        final String? value = null;
        expect(value.isNullOrEmpty, isTrue);
      });

      test('message with whitespaces is not isNullOrEmpty', () {
        final String? value = '   ';
        expect(value.isNullOrEmpty, isFalse);
      });

      test('message with non-whitespace characters is not isNullOrEmpty', () {
        final String? value = 'xxx';
        expect(value.isNullOrEmpty, isFalse);
      });
    });
  });

  group('isNotNullNorEmpty', () {
    group('on String?', () {
      test('empty message is not isNotNullNorEmpty', () {
        final String? value = '';
        expect(value.isNotNullNorEmpty, isFalse);
      });

      test('null message is not isNotNullNorEmpty', () {
        final String? value = null;
        expect(value.isNotNullNorEmpty, isFalse);
      });

      test('message with whitespaces is isNotNullNorEmpty', () {
        final String? value = '   ';
        expect(value.isNotNullNorEmpty, isTrue);
      });

      test('message with non-whitespace characters is isNotNullNorEmpty', () {
        final String? value = 'xxx';
        expect(value.isNotNullNorEmpty, isTrue);
      });
    });
  });

  group('isNotNullNorBlank', () {
    group('on String?', () {
      test('empty message is not isNotNullNorBlank', () {
        final String? value = '';
        expect(value.isNotNullNorBlank, isFalse);
      });

      test('null message is not isNotNullNorBlank', () {
        final String? value = null;
        expect(value.isNotNullNorBlank, isFalse);
      });

      test('message with whitespaces is not isNotNullNorBlank', () {
        final String? value = '   ';
        expect(value.isNotNullNorBlank, isFalse);
      });

      test('message with non-whitespace characters is isNotNullNorBlank', () {
        final String? value = 'xxx';
        expect(value.isNotNullNorBlank, isTrue);
      });
    });
  });

  group('ifEmpty', () {
    group('on String', () {
      test('empty message', () {
        final String value = '';
        expect(value.ifEmpty('aaa'), equals('aaa'));
      });

      test('message with whitespaces', () {
        final String value = '   ';
        expect(value.ifEmpty('aaa'), equals(value));
      });

      test('message with non-whitespace characters', () {
        final String value = 'xxx';
        expect(value.ifEmpty('aaa'), equals(value));
      });
    });

    group('on String?', () {
      test('empty message', () {
        final String? value = '';
        expect(value.ifEmpty('aaa'), equals('aaa'));
      });

      test('null message', () {
        final String? value = null;
        expect(value.ifEmpty('aaa'), equals(value));
      });

      test('message with whitespaces', () {
        final String? value = '   ';
        expect(value.ifEmpty('aaa'), equals(value));
      });

      test('message with non-whitespace characters', () {
        final String? value = 'xxx';
        expect(value.ifEmpty('aaa'), equals(value));
      });
    });
  });

  group('ifBlank', () {
    group('on String', () {
      test('empty message', () {
        final String value = '';
        expect(value.ifBlank('aaa'), equals('aaa'));
      });

      test('message with whitespaces', () {
        final String value = '   ';
        expect(value.ifBlank('aaa'), equals('aaa'));
      });

      test('message with non-whitespace characters', () {
        final String value = 'xxx';
        expect(value.ifBlank('aaa'), equals(value));
      });
    });

    group('on String?', () {
      test('empty message', () {
        final String? value = '';
        expect(value.ifBlank('aaa'), equals('aaa'));
      });

      test('null message', () {
        final String? value = null;
        expect(value.ifBlank('aaa'), equals(value));
      });

      test('message with whitespaces', () {
        final String? value = '   ';
        expect(value.ifBlank('aaa'), equals('aaa'));
      });

      test('message with non-whitespace characters', () {
        final String? value = 'xxx';
        expect(value.ifBlank('aaa'), equals(value));
      });
    });

    group('firstLetterUppercase', () {
      test('empty message', () {
        final String value = '';
        expect(value.firstLetterUppercase(), equals(''));
      });

      test('message with whitespaces', () {
        final String value = '   ';
        expect(value.firstLetterUppercase(), equals(value));
      });

      test('message with non-whitespace characters', () {
        final String value = 'xxx';
        expect(value.firstLetterUppercase(), equals('Xxx'));
      });

      test('message with 1 character', () {
        final String value = 'x';
        expect(value.firstLetterUppercase(), equals('X'));
      });
    });
  });
}
