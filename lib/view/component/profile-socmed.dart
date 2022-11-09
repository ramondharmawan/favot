import 'package:favoting/constants/r.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileSocmed extends StatelessWidget {
  const ProfileSocmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          R.assets.icGithub,
          width: 25,
        ),
        SizedBox(
          width: 10.0,
        ),
        Image.asset(
          R.assets.icMedium,
          width: 25,
        ),
        SizedBox(
          width: 10.0,
        ),
        Image.asset(
          R.assets.icInstagram,
          width: 25,
        ),
        SizedBox(
          width: 10.0,
        ),
        Image.asset(
          R.assets.icLinkedin,
          width: 25,
        ),
        SizedBox(
          width: 10.0,
        ),
        Image.asset(
          R.assets.icTwitter,
          width: 25,
        ),
        SizedBox(
          width: 10.0,
        ),
        Image.asset(
          R.assets.icFacebook,
          width: 25,
        ),
      ],
    );
  }
}
