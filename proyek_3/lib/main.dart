import 'package:flutter/material.dart';
import 'package:proyek_3/ui/page/dashboard.dart';
import 'package:proyek_3/ui/page/history.dart';
import 'package:proyek_3/ui/page/onboarding.dart';
import 'package:proyek_3/ui/page/signin.dart';
import 'package:proyek_3/ui/page/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashPage(),
      '/dashboard': (context) => const Dashboard(),
      '/onboarding': (context) => const OnboardingPage(),
      '/histori': (context) => const History(),
      '/signin': (context) => const SignInPage(),
      // '/profile': (context) => const HomePage(),
    });
  }
}
