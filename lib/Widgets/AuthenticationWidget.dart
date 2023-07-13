import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Username',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      hintText: "Type your username", border: InputBorder.none),
                ),
                const Divider(color: Colors.grey)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
