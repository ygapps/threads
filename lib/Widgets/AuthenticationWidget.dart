import 'package:flutter/material.dart';
import 'package:threads/Widgets/AuthenticationButton.dart';
import 'package:flutter_svg/svg.dart';
import 'AuthenticationField.dart';

class AuthenticationWidget extends StatefulWidget {
  const AuthenticationWidget({super.key});

  @override
  State<AuthenticationWidget> createState() => _AuthenticationWidgetState();
}

class _AuthenticationWidgetState extends State<AuthenticationWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      fontFamily: 'Helvetica')),
            ],
          ),
          const SizedBox(height: 5),
          AuthenticationField(
              textEditingController: usernameController,
              textLabel: "Username",
              hintLabel: "Type your username"),
          AuthenticationField(
              textEditingController: passwordController,
              textLabel: "Password",
              hintLabel: "Type your password",
              obscureText: true),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                "Forgot Password?",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
            child: AuthenticationButton(
                tapClosure: () {
                  print("Hello, World!");
                },
                textButton: "LOGIN"),
          ),
          const SizedBox(height: 20),
          const Text("Or Sign Up Using"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/vector/facebook.svg",
                  width: 50, height: 50),
              SvgPicture.asset("assets/vector/twitter.svg",
                  width: 50, height: 50),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(
                    "assets/vector/google.svg",
                    height: 30,
                    width: 30,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          const Text('Or Sign Up Using'),
          const TextButton(onPressed: null, child: Text('SIGN UP'))
        ]),
      ),
    );
  }
}
