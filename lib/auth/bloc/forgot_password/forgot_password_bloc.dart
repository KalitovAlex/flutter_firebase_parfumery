import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/globals.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordInitial()) {
    on<ForgotPasswordEvent>((event, emit) async {
      emit(ForgotPasswordLoading());
      try{
        final response = await userRepository.resetPassword(event.email);
        response == true ? emit(ForgotPasswordLoaded()) : emit(ForgotPasswordFailure());
      } catch (e){
        talker.error(e);
      }
    });
  }
}
