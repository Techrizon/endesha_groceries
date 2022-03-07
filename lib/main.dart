import 'package:endesha_groceries/helpers/iconhelper.dart';
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
        primaryColor: const Color(0xFF5B16D0),
      ),
      home: SplashScreen(
        duration: 3,
        goToPage: const WelcomePage(),
      ),
    );
  }
}

class IconFont extends StatelessWidget {
  Color color;
  double size;
  String iconName;

  IconFont({
    Key? key,
    required this.color,
    required this.size,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.iconName,
      style: TextStyle(
        color: this.color,
        fontSize: this.size,
        fontFamily: 'orilla',
      ),
    );
  }
}

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
        color: const Color(0xFF5B16D0),
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

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("Hello There?"),
      ),
    );
  }
}
