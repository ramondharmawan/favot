import 'package:favoting/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';

import '../constants/r.dart';
import 'home.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  static const String route = "Verification";

  @override
  State<Verification> createState() => _VerificationState();
}

final defaultPinTheme = PinTheme(
  width: 35,
  height: 35,
  textStyle: const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: R.colors.primary, width: 1.5),
    color: Colors.white,
    borderRadius: const BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
  margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: R.colors.primary, width: 1.5),
  borderRadius: BorderRadius.circular(5),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Colors.white,
    border: Border.all(color: R.colors.primary, width: 1.5),
  ),
);

class _VerificationState extends State<Verification> {
  final TextEditingController _pinController = TextEditingController();
  final String mobileNumber = '+6281231103131';
  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: TopAppBarLong(),
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    "Verifications",
                    style: TextStyle(
                      fontFamily: 'Nunitosans',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Enter 4 digit verification code we just sent you on $mobileNumber",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Enter Verification Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Pinput(
                    controller: _pinController,
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: R.colors.primary,
                      elevation: 0,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Home.route);
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
