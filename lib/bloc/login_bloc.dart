import 'dart:async';
//import 'package:app001/repositories/repositories.dart';
//import 'package:app001/ui/data/loginmodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/repositories/repository.dart';
import 'package:untitled3/ui/data/model/loginmodel.dart';


class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    emit(Loading());

    LoginModel loginModel;

    Map map = {"phone": event.name, "password": event.password};
    loginModel = await Repository().checkPhoneNumber(url: '/user/login', data: map);

    if (loginModel.status == true) {
      emit(LoginSuccess());
    } else if (loginModel.status == false) {
      emit(LoginError(error:loginModel.msg ));
    }


  }
}

class LoginEvents {}

class VerifyPassword extends LoginEvents {
  final String? name, password;

  VerifyPassword({this.name, this.password});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;

  LoginError({this.error});
}
