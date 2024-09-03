import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();
  void signup() {
    Navigator.pushNamed(context, "/dashboardScreen");
  }

  void login() {
    Navigator.pushNamed(context, "/login");
  }

  Widget customTextButton(
      String action, VoidCallback ontap, double buttonWidth) {
    return SizedBox(
        width: buttonWidth,
        child: TextButton(
          onPressed: ontap,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(249, 128, 128, 128)),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(vertical: 12)),
          ),
          child: Text(
            action,
            style: const TextStyle(
                color: Color.fromARGB(249, 255, 255, 255), fontSize: 16),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.8;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          TextButton(
            onPressed: login,
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(children: [
          const Text(
            'Signup',
            style: TextStyle(fontSize: 40, color: Colors.green),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Unlock your future,",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "One chance at a time",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                /* border: OutlineInputBorder(), */
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _pwdController,
              decoration: const InputDecoration(
                labelText: 'Password',
                /* border: OutlineInputBorder(), */
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 16.0),
          customTextButton("Signup", signup, buttonWidth),
          const SizedBox(
            height: 16,
          ),
        ]),
      ),
    );
  }
}
