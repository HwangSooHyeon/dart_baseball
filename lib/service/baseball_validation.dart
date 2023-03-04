class BaseballValidation {
  bool isNumber(String input) {
    return int.tryParse(input) != null;
  }

  bool isUnique(String input) {
    return input.split('').toSet().length == 3;
  }

  bool isThreeCiphers(String input) {
    return input.split('').length == 3;
  }

  bool isCorrectNumber(String input) {
    return (input == '1' || input == '2');
  }
}
