import 'package:bookly/features/splash_screen/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashViewBody(),
     theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}
