import 'package:favoting/constants/r.dart';
import 'package:favoting/view/home.dart';
import 'package:favoting/view/login_page.dart';
import 'package:favoting/view/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String route = "register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Gender { male, female }

class _RegisterPageState extends State<RegisterPage> {
  String gender = "male";

  onTapGender(Gender genderInput) {
    if (genderInput == Gender.male) {
      gender = "male";
    } else {
      gender = "female";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Please complete your profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RegisterTextField(
                hintText: 'John',
                title: 'Full Name',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextField(
                hintText: 'john@john.com',
                title: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextField(
                hintText: '+6281231101111',
                title: 'Mobile Number',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextField(
                hintText: '******',
                title: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextField(
                hintText: '******',
                title: 'Confirm Password',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Gender",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            gender == "male" ? R.colors.primary : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            width: 1,
                            color: R.colors.greyBorder,
                          ),
                        ),
                      ),
                      onPressed: () {
                        onTapGender(Gender.male);
                      },
                      child: Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 14,
                          color: gender == "male"
                              ? Colors.white
                              : const Color(0xff282828),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: gender == "female"
                              ? R.colors.primary
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              width: 1,
                              color: R.colors.greyBorder,
                            ),
                          ),
                        ),
                        onPressed: () {
                          onTapGender(Gender.female);
                        },
                        child: Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 14,
                            color: gender == "female"
                                ? Colors.white
                                : const Color(0xff282828),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // ButtonLogin(
              //   backgroundColor: R.colors.primary,
              //   borderColor: R.colors.primary,
              //   onTap: () {
              //     Navigator.of(context).pushNamed(Home.route);
              //   },
              //   child: const Text(
              //     "Register",
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.w500,
              //     ),
              //   ),
              // ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: R.colors.primary,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          width: 1,
                          color: R.colors.primary,
                        ),
                      )),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Verification.route);
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(
              color: R.colors.greyBorder,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: R.colors.greyHintText,
                )),
          ),
        ),
      ],
    );
  }
}
