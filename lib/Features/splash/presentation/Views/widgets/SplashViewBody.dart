import 'package:bookly/Constance.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/Home/presentation/Views/Home.dart';
import 'package:bookly/Features/splash/presentation/Views/widgets/slidingtext.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    inittSlidinganimation();

    NavigateToHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          BooklyAssets.Logo,
        ),
        slidingtext(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void inittSlidinganimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void NavigateToHomeView() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fadeIn,
        duration: ktranstionDuration,
      );
    });
  }
}
