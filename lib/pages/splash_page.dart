import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/widgets/iconfont.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashScreen({
    Key? key,
    required this.duration,
    required this.goToPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => this.goToPage),
        (route) => false,
      );
    });

    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          size: 100.0,
          iconName: IconFontHelper.LOGO,
        ),
      ),
    );
  }
}
