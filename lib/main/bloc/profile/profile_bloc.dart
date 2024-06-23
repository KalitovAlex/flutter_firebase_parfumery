import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/main/globals.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) async {
      emit(ProfileLoading());
      try {
        final response = await profileRepository.addUserImage(event.uniqueName, event.selectedImage);
        final result = userRepository.changeUser(response!);
        result == true ? emit(ProfileLoaded()) : ProfileFailure();
      } 
      on(FirebaseException,) {
        emit(ProfileFirestoreFailure());
      }
      catch (e) {
        emit(ProfileFailure());
        talker.error(e);
      } 
    });
  }
}
