import 'dart:convert';
import 'dart:io';

class InputView {
  String readCommandLine() {
    return stdin.readLineSync(encoding: utf8).toString();
  }
}
