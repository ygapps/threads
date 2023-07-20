import 'package:flutter/material.dart';

class AuthenticationButton extends StatelessWidget {
  const AuthenticationButton({
    super.key,
    required this.tapClosure,
    required this.textButton
  });

  final void Function()? tapClosure;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapClosure,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Colors.cyanAccent,
              Colors.purpleAccent,
              Colors.pinkAccent,
            ],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            textButton,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,
              letterSpacing: -1.0,
            ),
          ),
        ),
      ),
    );
  }
}
