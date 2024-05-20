import 'package:flutter/material.dart';
import 'package:test_validation/screens/auth_page/auth_page.dart';
import 'package:test_validation/theme/app_theme.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const AuthPage(),
    );
  }
}
