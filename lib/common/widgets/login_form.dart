import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final Widget Function() otpPageBuilder;
  const LoginForm({super.key, required this.otpPageBuilder});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _phoneController = TextEditingController();

  void _onLogin() {
    final phone = _phoneController.text.trim();
    if (phone.isEmpty) return;
    final page = widget.otpPageBuilder();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Welcome',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Fill Your Details Or Continue With Google',
          style: TextStyle(
              color: Color(0xff707B81),
              fontSize: 18,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        const Text('Mobile Number',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        const SizedBox(height: 10),
        TextField(
          controller: _phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: '+91 1234567890',
            fillColor: const Color(0xffF7F7F9),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: _onLogin,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff0D6EFD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
            child: const Text('Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 50,
          child: OutlinedButton.icon(
            onPressed: () {
              /* TODO: Google sign-in */
            },
            icon: Image.asset('assets/images/google_logo.png',
                width: 24, height: 24),
            label: const Text('Sign In With Google',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2B2B2B))),
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xffF7F7F9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
      ],
    );
  }
}
