import 'package:bookly/constants.dart';
import 'package:bookly/core/utls/assets.dart';
import 'package:bookly/features/splash_screen/presentation/views/widgets/sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../home/presentation/views/home_view.dart';

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
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=> const HomeView() , transition : Transition.fade,duration:kTransitionDuration);
    });
  }


  @override
  void dispose() {
    animationController.dispose(); // Dispose the animation controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          SlidingAnimation(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    // Start the animation
    animationController.forward();
  }

}
