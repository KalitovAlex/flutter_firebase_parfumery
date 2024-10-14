import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      final preferences = await SharedPreferences.getInstance();
      emit(AuthLoading());
      try {
        await Future.delayed(const Duration(milliseconds: 500));
        if (event.ifGoogle == true) {
          final response = await userRepository.authWithGoogle();
          response == true ? emit(AuthLoaded()) : emit(AuthFailure());
        } else {
          final response =
              await userRepository.auth(event.email, event.password);
          userModel =
              userModel.copyWith(email: event.email, password: event.password);
          event.rememberMe == true
              ? preferences.setString('uid', userModel.uid!)
              : null;
          response == true ? emit(AuthLoaded()) : emit(AuthFailure());
        }
      } catch (e) {
        emit(AuthFailure());
        talker.log(e);
      }
    });
  }
}
