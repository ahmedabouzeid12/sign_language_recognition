import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sign_language_recognition/login/cubit/state.dart';

import '../../screens/three_d_screen.dart';

class LoginCubit extends Cubit<LoginState>
{
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool isPress = true;

  void flip() {
    isPress =! isPress;
    emit(LoginChangeState());
  }
  void userLogin({
    required String email,
    required String password,
    required context,
  }) {
    emit(LoginLoadingState());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    ).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ThreeDScreen(),
        ),
      );
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState());
      showToast(error.message , position:ToastPosition.bottom , duration: Duration(seconds: 5), );
    });
  }
}