import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_parfumery/auth/model/user_model.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';

abstract class AbstractUserRepository {
  Future<bool> auth (String? login, String? password);
  Future<bool> authWithGoogle();
  Future<bool> registration(UserModel user);
  Future<bool> registrationWithGoogle(UserModel user, String? uid);
  Future<bool> resetPassword(String email);
  late final CollectionReference userReference;
  AbstractUserRepository(){
    userReference = fireStore.collection(userCollection);
  }
}