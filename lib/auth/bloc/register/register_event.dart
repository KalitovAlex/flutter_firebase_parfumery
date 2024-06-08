// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

class RegisterEvent {
  bool ifGoogle;
  String? email;
  String? password;
  String? userName;
  String? phoneNumber;
  RegisterEvent({
    required this.ifGoogle,
    this.email,
    this.password,
    this.userName,
    this.phoneNumber,
  });
}
