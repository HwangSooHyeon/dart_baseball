import 'package:dart_baseball/screen/home_screen.dart';
import 'package:dart_baseball/service/baseball_service.dart';
import 'package:dart_baseball/service/baseball_validation.dart';

class BaseballController {
  final HomeScreen homeScreen;
  final BaseballService baseBallService;
  final BaseballValidation baseBallValidation;

  BaseballController({
    required this.homeScreen,
    required this.baseBallService,
    required this.baseBallValidation,
  });

  void play() {}
}
