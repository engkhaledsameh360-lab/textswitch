import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';

class HomeController extends ChangeNotifier {
  String _currentMessage = AppStrings.initialMessage;

  String get currentMessage => _currentMessage;

  void updateMessage() {
    _currentMessage = AppStrings.updatedMessage;
    notifyListeners();
  }
}
