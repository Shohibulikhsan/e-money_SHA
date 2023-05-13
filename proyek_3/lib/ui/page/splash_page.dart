import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proyek_3/shared/theme.dart';

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
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'img/2.png',
            ),
          )),
        ),
      ),
    );
  }
}
