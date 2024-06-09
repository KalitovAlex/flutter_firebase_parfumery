// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterLoaded extends RegisterState {}

class RegisterLoadedWithGoogle extends RegisterState {
  String uid;
  RegisterLoadedWithGoogle({
    required this.uid,
  });
}

final class RegisterFailure extends RegisterState{}
