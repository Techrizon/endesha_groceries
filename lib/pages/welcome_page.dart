// ignore_for_file: deprecated_member_use

import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/pages/category_list_page.dart';
import 'package:endesha_groceries/pages/onbording_page.dart';
import 'package:endesha_groceries/widgets/iconfont.dart';
import 'package:endesha_groceries/widgets/theme_buttons.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/of_main_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: IconFont(
                          color: Colors.white,
                          iconName: IconFontHelper.MAIN_LOGO,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Bienvenido',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Productos Frescos.\nSaludables. A Tiempo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ThemeButton(
                    label: "Tratar Ahora!",
                    labelColor: Colors.white,
                    onClick: () {},
                    icon: const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  ),
                  ThemeButton(
                    label: "On Boarding",
                    color: AppColors.DARKER_GREEN,
                    onClick: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => OnboardingPage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    icon: const Icon(
                      Icons.add_alert_sharp,
                      color: Colors.white,
                    ),
                  ),
                  ThemeButton(
                    label: "Hcer Login",
                    color: Colors.transparent,
                    labelColor: Colors.white,
                    highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                    borderWidth: 4,
                    borderColor: AppColors.MAIN_COLOR,
                    onClick: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryListPage()),
                          (Route<dynamic> route) => false);
                    },
                    icon: const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
