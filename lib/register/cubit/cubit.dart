import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sign_language_recognition/login/cubit/state.dart';
import 'package:sign_language_recognition/register/cubit/state.dart';

import '../../login/login_screen.dart';

class RegisterCubit extends Cubit<RegisterState>
{
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  bool isPress = true;

  void flip() {
    isPress =! isPress;
    emit(RegisterchangeState());
  }

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String repassword,
    required context,
  }) {
    emit(RegisterLoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      emit(RegisterSuccessState());
      Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }).catchError((error) {
      emit(RegisterErrorState());
      showToast(error.message , position:ToastPosition.bottom , duration: Duration(seconds: 5), );
    });
  }
}