class Baseball {
  final List<int> numbers;

  Baseball({
    required this.numbers,
  });

  bool isEqual(Baseball other) {
    for (var i = 0; i < 3; i++) {
      if (numbers[i] != other.numbers[i]) {
        return false;
      }
    }
    return true;
  }
}
