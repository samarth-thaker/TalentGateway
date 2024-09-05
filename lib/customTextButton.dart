import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final VoidCallback ontap;
  final String action;
  final double buttonWidth;

  const CustomTextButton({
    required this.ontap,
    required this.action,
    required this.buttonWidth,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.buttonWidth,
      child: ElevatedButton(
        onPressed: widget.ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: 
             Colors.grey,
          padding: const EdgeInsets.symmetric(vertical: 12),
          ),
        
        child: Text(
          widget.action,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
