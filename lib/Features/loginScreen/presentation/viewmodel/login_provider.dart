import 'package:flutter/material.dart';

class LogInProvider extends ChangeNotifier {
  bool isVisiable = false;
  changeVisibility() {
    isVisiable = !isVisiable;
    notifyListeners();
  }
}
