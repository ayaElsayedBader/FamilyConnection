import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/model/model_register.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  ModelRegister? userModel ;

  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);


  loginUser({required String email, password, userName}) {
    emit(LoginLoading());
    var auth = FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    auth.then((value) {
      if (kDebugMode) {
        print(value.user?.uid);
      }
      register(
          uid: value.user!.uid,
          email: email,
          userName: userName,
          passWord: password);
      emit(RegisterSuccess());
    }).catchError((error) {
      emit(LoginError(error: error.toString()));
    });
  }

  void  register(
      {required String uid,
      required String email,
      required String userName,
      required dynamic passWord}) {
 userModel= ModelRegister(
      userName: userName,
      email: email,
      passWord: passWord,
      uid: uid,
      image:
          'https://th.bing.com/th/id/OIP.znLJ_LUeyqLvZFR5Wejs2QHaHg?pid=ImgDet&rs=1',
      pio: '"write your pio.',
    );
    var user = FirebaseFirestore.instance.collection('aloha').doc(uid);
    user.set(

        userModel! .toMap());
    emit(RegisterSuccess());
  }

  loginSuccess({required String email, required String password}) {
    emit(LoginLoading());

    var auth = FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    auth.then((value) {
      if (kDebugMode) {
        print(value.user);
      }
      emit(LoginSuccess());
    }).catchError((e) {
      emit(LoginError(error: e.toString()));
    });
  }
}






