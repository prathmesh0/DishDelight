import 'package:dishdelight/Screens/Home/home_screen.dart';
import 'package:dishdelight/Screens/auth/login_screen.dart';
import 'package:dishdelight/Screens/auth/sign_up_screen.dart';
import 'package:dishdelight/screens/opening/opening_screen.dart';
import 'package:dishdelight/screens/opening/spash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DishDelight',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SpashScreen(),
        "/opening": (context) => const OpeningScreen(),
        "/login": (context) => const LoginScreen(),
        "/signup": (context) => const SignUpScreen(),
        "/home": (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
