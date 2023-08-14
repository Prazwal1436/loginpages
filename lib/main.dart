import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login App",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
