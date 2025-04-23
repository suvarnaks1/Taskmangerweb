import 'package:flutter/material.dart';
import 'package:taskmanager/common/widgets/otp_form.dart';
import 'package:taskmanager/common/widgets/side_illustration.dart';

class TabletOtpPage extends StatelessWidget {
  const TabletOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          const Expanded(
            flex: 4,
            child: SideIllustration(),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Center(
                child: OtpForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
