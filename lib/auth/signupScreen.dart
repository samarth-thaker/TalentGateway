import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:talentgateway/Global/widget/customTextButton.dart';

class SignUpScreenFresher extends StatefulWidget {
  const SignUpScreenFresher({super.key});

  @override
  State<SignUpScreenFresher> createState() => _SignUpScreenFresherState();
}

class _SignUpScreenFresherState extends State<SignUpScreenFresher> {
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();
  final _confirmpwdController = TextEditingController();
  final _collegeController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  
  
  void signup() {
    Navigator.pushNamed(context, "/dashboardScreen");
  }

  void login() {
    Navigator.pushNamed(context, "/login");
  }

  File? _resumeFile;
  Future<void> _pickResume() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _resumeFile = File(result.files.single.path!);
      });
    }
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
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40), 
              const Text(
                'Signup',
                style: TextStyle(fontSize: 40, color: Colors.green),
              ),
              const SizedBox(height: 5),
              const Text(
                "Unlock your future,",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const Text(
                "One chance at a time",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _pwdController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _confirmpwdController,
                decoration: const InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _collegeController,
                decoration: const InputDecoration(labelText: 'College'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(labelText: 'Phone number'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  TextButton(
                    onPressed: _pickResume,
                    child: const Text(
                      "Upload Resume (PDF)",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  _resumeFile != null
                      ? Text("Resume: ${_resumeFile!.path.split('/').last}")
                      : const Text("No file selected"),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextButton(
                  ontap: signup, action: "Signup", buttonWidth: buttonWidth),
              const SizedBox(height: 20), 
            ],
          ),
        ),
      ),
    );
  }
}
