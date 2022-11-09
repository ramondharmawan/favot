import 'dart:async';

import 'package:favoting/view/dashboard.dart';
import 'package:favoting/view/login_page.dart';
import 'package:favoting/view/onboarding_screen.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/r.dart';

int introduction = 0;

// void goready() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initIntroduction();
//   runApp(const LoginPage());
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String route = "splash_screen";

  @override
  State<SplashScreen> createState() {
    WidgetsFlutterBinding.ensureInitialized();
    initIntroduction();
    return _SplashScreenState();
  }
}

Future initIntroduction() async {
  final prefs = await SharedPreferences.getInstance();

  int? intro = prefs.getInt('introduction');
  print('intro : $intro');
  if (intro != null && intro == 1) {
    return introduction = 1;
  }

  prefs.setInt('introduction', 1);
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      // Navigator.of(context)
      // .push(MaterialPageRoute(builder: (context) => LoginPage()));
      introduction == 0
          ? Navigator.of(context).pushReplacementNamed(OnBoarding.route)
          : Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (builder) {
              return DashboardScreen();
            }));
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
