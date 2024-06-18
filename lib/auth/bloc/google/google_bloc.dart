import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/main/globals.dart';

part 'google_event.dart';
part 'google_state.dart';

class GoogleBloc extends Bloc<GoogleEvent, GoogleState> {
  GoogleBloc() : super(GoogleInitial()) {
    on<GoogleEvent>((event, emit) async {
      emit(GoogleLoading());
      try{
        final response = await userRepository.registrationWithGoogle(userModel = userModel.copyWith(phoneNumber: event.phoneNumber, username: event.fullName));
        response == true ? emit(GoogleLoaded()) : emit(GoogleFailure());
      } catch(e){
        talker.error(e);
      }
    });
  }
}
