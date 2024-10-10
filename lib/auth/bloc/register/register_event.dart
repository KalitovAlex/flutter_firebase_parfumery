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
