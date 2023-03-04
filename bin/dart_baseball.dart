import 'package:dart_baseball/controller/baseball_controller.dart';
import 'package:dart_baseball/screen/home_screen.dart';
import 'package:dart_baseball/service/baseball_service.dart';
import 'package:dart_baseball/service/baseball_validation.dart';

void main(List<String> arguments) {
  final homeScreen = HomeScreen();
  final baseballService = BaseballService();
  final baseballValidation = BaseballValidation();
  final baseballController = BaseballController(
    homeScreen: homeScreen,
    baseballService: baseballService,
    baseballValidation: baseballValidation,
  );
  baseballController.play();
}
