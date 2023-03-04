import 'dart:math';

class BaseballService {
  List<int> createRandomNumber() {
    Random random = Random();
    List<int> numbers = [random.nextInt(9) + 1];
    while (numbers.length < 3) {
      int number = random.nextInt(9) + 1;
      if (numbers.last != number) {
        numbers.add(number);
      }
    }
    return numbers;
  }

  Map<String, int> checkBallCount(List<int> createdNumbers, List<int> input) {
    return {
      'ball': countBall(createdNumbers, input),
      'strike': countStrike(createdNumbers, input),
    };
  }

  int countBall(List<int> createdNumbers, List<int> input) {
    var ballCount = 0;
    for (var i = 0; i < 3; i++) {
      if (createdNumbers.contains(input[i]) && createdNumbers[i] != input[i]) {
        ballCount += 1;
      }
    }
    return ballCount;
  }

  int countStrike(List<int> createdNumbers, List<int> input) {
    var strikeCount = 0;
    for (var i = 0; i < 3; i++) {
      if (createdNumbers[i] == input[i]) {
        strikeCount += 1;
      }
    }
    return strikeCount;
  }
}
