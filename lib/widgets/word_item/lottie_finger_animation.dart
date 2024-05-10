part of 'word_item.dart';

class _LottieFingerAnimation extends StatelessWidget {
  final AnimationController animationController;

  const _LottieFingerAnimation({
    Key? key,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      maintainState: true,
      visible: context.watch<_FingerAnimationProvider>().isPlaying,
      child: Lottie.asset(
        'assets/animations/finger_animation.json',
        controller: animationController,
        onLoaded: (composition) =>
            animationController.duration = composition.duration,
      ),
    );
  }
}
