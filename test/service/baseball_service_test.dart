import 'package:dart_baseball/service/baseball_service.dart';
import 'package:dart_baseball/service/baseball_validation.dart';
import 'package:test/test.dart';

void main() {
  final baseballService = BaseballService();
  final baseballValidation = BaseballValidation();

  test('createRandomNumbers', () {
    List<int> numbers = baseballService.createRandomNumber();
    expect([
      baseballValidation.isUnique(numbers.join()),
      baseballValidation.isThreeCiphers(numbers.join()),
    ], equals([isTrue, isTrue]));
  });

  group('checkBallCount', () {
    List<int> createdNumbers = [1, 2, 3];
    test('when the result is no ball and strike', () {
      List<int> input = [4, 5, 6];
      expect(baseballService.checkBallCount(createdNumbers, input),
          equals({'ball': 0, 'strike': 0}));
    });
    test('when the result is one ball and one strike', () {
      List<int> input = [1, 3, 4];
      expect(baseballService.checkBallCount(createdNumbers, input),
          equals({'ball': 1, 'strike': 1}));
    });
    test('when the result is 3 strikes', () {
      List<int> input = [1, 2, 3];
      expect(baseballService.checkBallCount(createdNumbers, input),
          equals({'ball': 0, 'strike': 3}));
    });
  });
}
