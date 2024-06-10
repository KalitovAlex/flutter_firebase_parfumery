import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
      emit(RegisterLoading());
      try{
       bool? response;
       if (event.ifGoogle == true) {
       final response = await userRepository.regWithGoogle();
       response == true ? emit(RegisterLoadedWithGoogle(uid: uid)) : emit(RegisterFailure());
       } else {
          response = await userRepository.registration(userModel = userModel.copyWith(email: event.email,password: event.password,phoneNumber: event.phoneNumber, username: event.userName,));
          response == true ? emit(RegisterLoaded()) : emit(RegisterFailure());
       }
      } catch(e){
        emit(RegisterFailure());
        talker.error(e);
      }
    });
  }
}
