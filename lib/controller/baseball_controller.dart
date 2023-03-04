import 'package:dart_baseball/component/input_view.dart';
import 'package:dart_baseball/component/output_view.dart';
import 'package:dart_baseball/screen/home_screen.dart';
import 'package:dart_baseball/service/baseball_service.dart';
import 'package:dart_baseball/service/baseball_validation.dart';

class BaseballController {
  final InputView inputView;
  final OutputView outputView;
  final HomeScreen homeScreen;
  final BaseballService baseBallService;
  final BaseballValidation baseBallValidation;

  BaseballController({
    required this.inputView,
    required this.outputView,
    required this.homeScreen,
    required this.baseBallService,
    required this.baseBallValidation,
  });

  void play() {}
}
