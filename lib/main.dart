import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_screen.dart';
import 'package:flutter_application_1/screens/categroy_screen.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'login_page.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MainApp());
    // runApp(const SplashScreen());
        // runApp(const Login());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login' : (context) => const Login(),
        '/signUp' : (context) => const SignUp(),
        '/mainScreen' : (context) => const MainScreenPage(),
        '/categoryScreenPage': (context) => const CategoryScreenPage(),
      },
    );
  }
}