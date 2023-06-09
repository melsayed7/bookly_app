import 'package:bookly_app/features/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> sidingAnimationImage;
  late Animation<Offset> sidingAnimationText;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sidingAnimationImage = Tween(
      begin: const Offset(0, -2),
      end: Offset.zero,
    ).animate(animationController);

    sidingAnimationText = Tween(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: sidingAnimationImage,
            builder: (context, _) {
              return SlideTransition(
                position: sidingAnimationImage,
                child: Image.asset(
                  'assets/images/Logo.png',
                ),
              );
            }),
        AnimatedBuilder(
            animation: sidingAnimationText,
            builder: (context, _) {
              return SlideTransition(
                position: sidingAnimationText,
                child: const Text(
                  'Read Free Books ... ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              );
            }),
      ],
    );
  }
}
