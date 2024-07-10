import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, "/opening"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BounceInUp(
            child: Image.asset(
              'assets/images/dishdelight_logo.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
