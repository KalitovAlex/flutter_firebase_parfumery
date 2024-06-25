// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'profile_bloc.dart';

class ProfileEvent {
  String uniqueName;
  XFile? selectedImage;
  String emai;
  String password;
  String username;
  String phoneNumber;
  ProfileEvent({
    required this.uniqueName,
    required this.selectedImage,
    required this.emai,
    required this.password,
    required this.username,
    required this.phoneNumber,
  });
}
