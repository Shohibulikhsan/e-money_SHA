import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplasPageState();
}

class _SplasPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/img_logo_dark.png',
            ),
          )),
        ),
      ),
    );
  }
}
