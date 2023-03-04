import 'package:dart_baseball/service/baseball_service.dart';
import 'package:dart_baseball/service/baseball_validation.dart';
import 'package:test/test.dart';

void main() {
  final baseballService = BaseballService();
  final baseballValidation = BaseballValidation();

  test('createRandomNumbers', () {
    int numbers = baseballService.createRandomNumber();
    expect([
      baseballValidation.isUnique(numbers),
      baseballValidation.isThreeCiphers(numbers),
    ], allOf(isTrue));
  });

  group('checkBallCount', () {
    test('when the result is no ball and strike', () {
      int createdNumbers = 123;
      int input = 456;
      expect(baseballService.checkBallCount(createdNumbers, input),
          equals({'ball': 0, 'strike': 0}));
    });
    test('when the result is one ball and one strike', () {
      int createdNumbers = 123;
      int input = 134;
      expect(baseballService.checkBallCount(createdNumbers, input),
          equals({'ball': 1, 'strike': 1}));
    });
    test('when the result is 3 strikes', () {
      int createdNumbers = 123;
      int input = 123;
      expect(baseballService.checkBallCount(createdNumbers, input),
          equals({'ball': 0, 'strike': 3}));
    });
  });
}
