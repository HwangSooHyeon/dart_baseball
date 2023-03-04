import 'package:dart_baseball/component/input_view.dart';
import 'package:dart_baseball/component/output_view.dart';

class HomeScreen {
  final InputView _inputView = InputView();
  final OutputView _outputView = OutputView();

  void startView() {
    _outputView.showStart();
  }

  String getInputView() {
    String input = '';
    while (input.isEmpty) {
      try {
        _outputView.showInputMessage();
        input = _inputView.readCommandLine();
      } catch (e) {
        print('입력 에러: $e');
      }
    }
    return input;
  }

  void ballCountView(Map<String, int> ballCount) {
    _outputView.showBallCount(ballCount);
  }

  String gameEndView() {
    String input = '';
    while (input.isEmpty) {
      try {
        _outputView.showGameEnd();
        input = _inputView.readCommandLine();
      } catch (e) {
        print('입력 에러: $e');
      }
    }
    return input;
  }
}
