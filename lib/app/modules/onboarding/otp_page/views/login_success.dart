import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/7efs.gif",
                width: 350,
              ),
              Text(
                "Login Successful!",
                style: CustomTextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
