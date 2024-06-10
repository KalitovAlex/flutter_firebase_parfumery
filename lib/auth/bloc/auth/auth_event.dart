// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

class AuthEvent {
 bool ifGoogle;
 String? email;
 String? password;
 bool? rememberMe;
  AuthEvent({
    required this.ifGoogle,
    this.email,
    this.password,
    this.rememberMe,
  });
}
