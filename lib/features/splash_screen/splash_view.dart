import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: const SplashViewBody(),
      theme: ThemeData().copywith(
        scaffoldBackgroundColor: const Color(oxff100B20)
      )
    );
  }
}
