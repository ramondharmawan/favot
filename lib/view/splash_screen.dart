import 'dart:async';

import 'package:favoting/view/login_page.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../constants/r.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String route = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      // Navigator.of(context)
      // .push(MaterialPageRoute(builder: (context) => LoginPage()));
      Navigator.of(context).pushReplacementNamed(LoginPage.route);
    });

    return Scaffold(
      // backgroundColor: Color(0xff4b0082),
      backgroundColor: R.colors.primary,
      body: Center(
        child: Image.asset(R.assets.icSplash),
      ),
    );
  }
}
