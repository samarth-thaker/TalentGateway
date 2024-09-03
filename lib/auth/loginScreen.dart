/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();
  void login() {
    Navigator.pushNamed(context, "/dashboardScreen");
  }

  void signup() {
    Navigator.pushNamed(context, "/signup");
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
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          const Text(
            'Login',
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
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'E-mail',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: _pwdController,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 16.0),
          customTextButton("Login", login, buttonWidth),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                  onPressed: () => signup(), child: const Text('Signup now'))
            ],
          )
        ]),
      ),
    );
  }
}
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();

  void login() {
    Navigator.pushNamed(context, "/dashboardScreen");
  }

  void signup() {
    Navigator.pushNamed(context, "/signup");
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.8;

    return Scaffold(
      appBar: AppBar(
        /* title: const Text('Login'), */
        backgroundColor: Colors.green,
        actions: [
          TextButton(
            onPressed: signup,
            child: const Text(
              'Signup',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Unlock your future,',
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
            const SizedBox(height: 25),
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
            customTextButton("Login", login, buttonWidth),
          ],
        ),
      ),
    );
  }
}
