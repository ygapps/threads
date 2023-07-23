import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AuthenticationField extends StatelessWidget {
  const AuthenticationField(
      {super.key,
      required this.textEditingController,
      required this.textLabel,
      required this.hintLabel,
      this.obscureText = false});

  final TextEditingController textEditingController;
  final String textLabel;
  final String hintLabel;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              textLabel,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            children: [
              Icon(obscureText ? CupertinoIcons.lock : CupertinoIcons.person, color: Colors.grey),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: textEditingController,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                      hintText: hintLabel, border: InputBorder.none),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.grey)
        ],
      ),
    );
  }
}
