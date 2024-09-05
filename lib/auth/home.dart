import 'package:flutter/material.dart';
import 'package:talentgateway/Global/widget/customTextButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void signupFresher(BuildContext context) {
    Navigator.pushNamed(context, "/signupFresher");
  }

  void signupEmployer(BuildContext context) {
    Navigator.pushNamed(context, "/signupEmployer");
  }

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome"),
            CustomTextButton(
              ontap: () => signupFresher(context), // Correcting the callback
              action: "Signup as fresher",
              buttonWidth: buttonWidth,
            ),
            const SizedBox(height: 20),
            CustomTextButton(
              ontap: () => signupEmployer(context), // Correcting the callback
              action: "Signup as employer",
              buttonWidth: buttonWidth,
            ),
          ],
        ),
      ),
    );
  }
}
