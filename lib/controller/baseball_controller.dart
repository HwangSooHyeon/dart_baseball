import 'package:dart_baseball/screen/home_screen.dart';
import 'package:dart_baseball/service/baseball_service.dart';
import 'package:dart_baseball/service/baseball_validation.dart';

class BaseballController {
  final HomeScreen homeScreen;
  final BaseballService baseballService;
  final BaseballValidation baseballValidation;

  BaseballController({
    required this.homeScreen,
    required this.baseballService,
    required this.baseballValidation,
  });

  void play() {
    homeScreen.startView();
    List<int> createdNumbers = baseballService.createRandomNumber();
    _gameState(createdNumbers);
  }

  void _gameState(List<int> createdNumbers) {
    do {
      _inGame(createdNumbers);
    } while (homeScreen.gameEndView() == '1');
  }

  void _inGame(List<int> createdNumbers) {
    Map<String, int> ballCount;
    do {
      ballCount = baseballService.checkBallCount(
        createdNumbers,
        _getInput(),
      );
      homeScreen.ballCountView(ballCount);
    } while (ballCount['strike'] != 3);
  }

  List<int> _getInput() {
    String input = '';
    do {
      input = homeScreen.getInputView();
    } while (!_validateInput(input));
    return input.split('').map((e) => int.parse(e)).toList();
  }

  bool _validateInput(String input) {
    return (baseballValidation.isNumber(input) &&
        baseballValidation.isUnique(input) &&
        baseballValidation.isThreeCiphers(input));
  }
}
