part of 'register_bloc.dart';

class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterLoaded extends RegisterState {}

final class RegisterLoadedWithGoogle extends RegisterState {}

final class RegisterFailure extends RegisterState{}
