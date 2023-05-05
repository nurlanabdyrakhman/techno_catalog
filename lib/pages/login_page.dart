import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/undraw_secure_login_pdn4.png',
          fit: BoxFit.cover,
        ),
        Text('Wellcome',style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),)
      ],
    ));
  }
}
