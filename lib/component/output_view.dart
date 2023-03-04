class OutputView {
  void showStart() {
    print('숫자 야구 게임을 시작합니다.\n');
  }

  void showInputMessage() {
    print('숫자를 입력해주세요 : ');
  }

  void showBallCount(Map<String, int> ballCount) {
    if (ballCount['ball'] == 0) {
      print('${ballCount['strike']}스트라이크\n');
    }
    if (ballCount['strike'] == 0) {
      print('${ballCount['ball']}볼\n');
    }
    if (ballCount['ball'] != 0 && ballCount['strike'] != 0) {
      print('${ballCount['ball']}볼 ${ballCount['strike']}스트라이크\n');
    }
  }

  void showGameEnd() {
    print('3개의 숫자를 모두 맞히셨습니다! 게임 종료\n');
    print('게임을 새로 시작하려면 1, 종료하려면 2를 입력하세요.\n');
  }
}
