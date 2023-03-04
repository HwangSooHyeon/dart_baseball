import 'package:dart_baseball/component/input_view.dart';
import 'package:dart_baseball/component/output_view.dart';

class HomeScreen {
  final InputView _inputView = InputView();
  final OutputView _outputView = OutputView();

  void startView() {
    _outputView.showStart();
  }

  String getInputView() {
    _outputView.showInputMessage();
    return _inputView.readCommandLine();
  }

  void ballCountView(Map<String, int> ballCount) {
    _outputView.showBallCount(ballCount);
  }

  String gameEndView() {
    _outputView.showGameEnd();
    return _inputView.readCommandLine();
  }
}
