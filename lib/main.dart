import 'package:favoting/view/home.dart';
import 'package:favoting/view/register_page.dart';
import 'package:favoting/view/login_page.dart';
import 'package:favoting/view/splash_screen.dart';
import 'package:favoting/view/verification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "login_screen": (context) => const LoginPage(),
        RegisterPage.route: (context) => const RegisterPage(),
        Verification.route: (context) => const Verification(),
        Home.route: (context) => const Home(),
      },
    );
  }
}
