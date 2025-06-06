import 'package:flutter/material.dart';
import 'package:taskmanager/mobile_layout/otp_verification_page.dart';
import 'package:taskmanager/common/widgets/login_form.dart';

class MobileLoginPage extends StatelessWidget {
  const MobileLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginForm(otpPageBuilder: () => MobileOtpPage(),),
          ],
        ),
      ),
    );
  }
}
