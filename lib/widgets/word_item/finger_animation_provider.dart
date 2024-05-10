part of 'word_item.dart';

class _FingerAnimationProvider with ChangeNotifier {
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  final AnimationController _animationController;

  _FingerAnimationProvider({
    required AnimationController animationController,
    required VoidCallback onComplete,
  }) : _animationController = animationController {
    animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
        _isPlaying = false;
        notifyListeners();
        onComplete();
      }
    });
  }

  onSelect() {
    _isPlaying = true;
    notifyListeners();
    _animationController.reset();
    _animationController.forward();
  }
}
