import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();

    initFadeAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeTransition(
          opacity: fadeAnimation,
          child: SvgPicture.asset(
            AssetImageProvider.logoImage,
            width: 65,
            height: 65,
          ),
        )
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3)).then(
      (_) => Get.to(
        () => const HomeView(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 350),
      ),
    );
  }

  void initFadeAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward();
    fadeAnimation.addListener(() {
      setState(() {});
    });
  }
}
