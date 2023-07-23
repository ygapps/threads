import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads/screens/authentication_screen.dart';
import 'package:threads/services/login_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (_) => LoginCubit(),
    child: const MaterialApp(
      home: AuthenticationScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
