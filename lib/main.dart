import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash_screen/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      title: 'Bookly App',
      home: const SplashView(),
    );
  }
}

