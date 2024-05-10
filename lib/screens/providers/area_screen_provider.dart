import 'package:flutter/material.dart';

class AreaScreenProvider with ChangeNotifier {
  bool _isWordsInteractive = true;

  bool get isWordsInteractive => _isWordsInteractive;

  void set isWordsInteractive(bool value) {
    _isWordsInteractive = value;
    notifyListeners();
  }
}
