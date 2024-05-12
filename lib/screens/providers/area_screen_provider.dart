import 'package:flutter/material.dart';

class FingerAnimationProvider with ChangeNotifier {
  bool _isFingerAnimationPlaying = true;

  bool get isFingerAnimationPlaying => _isFingerAnimationPlaying;

  set isFingerAnimationPlaying(bool value) {
    _isFingerAnimationPlaying = value;
    notifyListeners();
  }
}
