import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'dart:async';

import 'package:project/views/auth/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Image.network(
            'https://static.vecteezy.com/system/resources/thumbnails/053/649/449/small/isolated-minus-subtract-symbol-on-for-graphic-design-use-free-png.png',
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
