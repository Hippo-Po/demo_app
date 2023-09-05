import 'package:demo_app/styles/styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(kAppBarBackGroundColor),
        leading: const BackButton(
          color: kAppBarTextAndArrowColor,
        ),
        centerTitle: true,
        title: Text(
          'สมัครสมาชิก',
          style: appBarTextStyle,
        ),
      ),
    );
  }
}
