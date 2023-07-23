import 'package:flutter_bloc/flutter_bloc.dart';

enum LoginState { ready, loading, success, failure }

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.ready);

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginState.loading);

    await Future.delayed(const Duration(seconds: 2));

    if (email == "youssef@ibm.com" && password == "123") {
      emit(LoginState.success);
    } else {
      emit(LoginState.failure);
    }
  }
}
