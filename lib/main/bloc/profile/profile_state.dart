part of 'profile_bloc.dart';

class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {}

final class ProfileFirestoreFailure extends ProfileState {}

final class ProfileFailure extends ProfileState {}