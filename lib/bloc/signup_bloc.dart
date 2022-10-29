import 'dart:async';




import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/repositories/repository.dart';
import 'package:untitled3/ui/data/model/signupModel.dart';



class SignupBloc extends Bloc<SignupEvents, SignupStates> {
  SignupBloc() : super(SignupInitial()) {
    on<GetSignupevent>(getSignupevent);
  }

  Future<FutureOr<void>> getSignupevent(
      GetSignupevent event, Emitter<SignupStates> emit) async {
    emit(Fetching());

    SignupModel signupmodel;

    Map map = {
      "phone": event.username,
      "password": event.password,
      "role": event.role
    };
    print(map);
    signupmodel =
    await Repository().signup(url: "/user/registration", data: map);

    if (signupmodel.status == true) {
      emit(SignupSuccess());
    } else if (signupmodel.status == false) {
      emit(SignupError(error: signupmodel.msg));
    }
  }
}

class SignupEvents {}

class GetSignupevent extends SignupEvents {
  final String? username, password, role;

  GetSignupevent({this.username, this.password, this.role});
}

class SignupStates {}

class SignupInitial extends SignupStates {}

class Fetching extends SignupStates {}

class SignupSuccess extends SignupStates {}

class SignupError extends SignupStates {
  final String? error;

  SignupError({this.error});
}