// ignore_for_file: deprecated_member_use

import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/pages/splash_page.dart';
import 'package:endesha_groceries/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Endesha Groceries',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: AppColors.MAIN_COLOR,
        fontFamily: 'Raleway',
      ),
      home: SplashScreen(
        duration: 3,
        goToPage: const WelcomePage(),
      ),
    );
  }
}
