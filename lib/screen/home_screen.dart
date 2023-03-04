import 'package:dart_baseball/component/input_view.dart';
import 'package:dart_baseball/component/output_view.dart';

class HomeScreen {
  final InputView inputView;
  final OutputView outputView;

  HomeScreen({
    required this.inputView,
    required this.outputView,
  });

  void startView() {
    outputView.showStart();
  }

  String getInputView() {
    outputView.showInputMessage();
    return inputView.readCommandLine();
  }

  void ballCountView(Map<String, int> ballCount) {
    outputView.showBallCount(ballCount);
  }

  String gameEndView() {
    outputView.showGameEnd();
    return inputView.readCommandLine();
  }
}
