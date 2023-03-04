import 'package:dart_baseball/service/baseball_validation.dart';
import 'package:test/test.dart';

void main() {
  final baseballValidation = BaseballValidation();

  group('isNumber', () {
    test('when input is not number', () {
      String input = '12a';
      expect(baseballValidation.isNumber(input), isFalse);
    });
    test('when input is number', () {
      String input = '123';
      expect(baseballValidation.isNumber(input), isTrue);
    });
  });

  group('isUnique', () {
    test('when input is not unique', () {
      int input = 121;
      expect(baseballValidation.isUnique(input), isFalse);
    });
    test('when input is unique', () {
      int input = 123;
      expect(baseballValidation.isUnique(input), isTrue);
    });
  });

  group('isThreeCipher', () {
    test('when input is not three cipher number', () {
      int input = 1234;
      expect(baseballValidation.isThreeCiphers(input), isFalse);
    });
    test('when input is three cipher number', () {
      int input = 123;
      expect(baseballValidation.isThreeCiphers(input), isTrue);
    });
  });

  group('isCorrectNumber', () {
    test('when input is not 1 or 0', () {
      int input = 3;
      expect(baseballValidation.isCorrectNumber(input), isFalse);
    });
    test('when input is 1', () {
      int input = 1;
      expect(baseballValidation.isCorrectNumber(input), isTrue);
    });
    test('when input is 0', () {
      int input = 0;
      expect(baseballValidation.isCorrectNumber(input), isTrue);
    });
  });
}
