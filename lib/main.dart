import 'package:flutter/material.dart';
import 'package:talentgateway/auth/home.dart';
import 'package:talentgateway/auth/loginScreen.dart';
import 'package:talentgateway/auth/signupEmployer.dart';
import 'package:talentgateway/auth/signupScreen.dart';
import 'package:talentgateway/dashboard/dashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(256, 0, 0, 128),
        useMaterial3: true,
      ),
      home: const Home(),
      routes: {
        '/signupFresher': (context) => const SignUpScreenFresher(),
        '/dashboardScreen': (context) => const DashboardScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const Home(),
        '/signupEmployer':(context)=> const SignUpEmployer()
      },
    );
  }
}
