import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/r.dart';

class TopAppBarLong extends StatelessWidget {
  const TopAppBarLong({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: R.colors.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: SizedBox(
          height: 150,
          child: Image.asset(R.assets.icLogo),
        ),
      ),
    );
  }
}
