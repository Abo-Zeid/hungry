import 'package:flutter/material.dart';
import 'package:hungry/core/utils/theme.dart';
import 'package:hungry/feature/auth/presentation/pages/login_view.dart';
// import 'package:hungry/feature/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: LoginView()),
    );
  }
}
