import 'package:flutter/material.dart';
import 'package:talentgateway/auth/loginScreen.dart';
import 'package:talentgateway/auth/signupScreen.dart';
import 'package:talentgateway/dashboard/dashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(256, 0, 0, 128),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      routes: {
        '/signup' : (context)=>SignUpScreen(),
        '/dashboard':(context)=>DashboardScreen(),
        '/login':(context)=>LoginScreen(),
      },
    );
  }
}

