import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuthException

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
      emit(RegisterLoading());
      try {
        bool? response;
        if (event.ifGoogle == true) {
          final response = await userRepository.regWithGoogle();
          response == true
              ? emit(RegisterLoadedWithGoogle(uid: uid))
              : emit(RegisterFailure(error: "IDK"));
        } else {
          response = await userRepository.registration(userModel =
              userModel.copyWith(
                  email: event.email,
                  password: event.password,
                  phoneNumber: event.phoneNumber,
                  username: event.userName,
                  pic_url: "default"));
          emit(RegisterLoaded()); // Emit the loaded state
        }
      } on FirebaseAuthException catch (e) {
        emit(RegisterFailure(error: e.message ?? "An error occurred"));
        talker.error(e);
      } catch (e) {
        emit(RegisterFailure(error: e.toString())); // Catch other exceptions
        talker.error(e);
      }
    });
  }
}
