import 'package:flutter/material.dart';

class SideIllustration extends StatelessWidget {
  const SideIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/login_vector.jpg',
        fit: BoxFit.cover,
        width: 400,
        
      ),
    );
  }
}
