import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_parfumery/auth/model/user_model.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';

abstract class AbstractUserRepository {
  Future<bool> auth (String? login, String? password);
  Future<UserCredential?> authWithGoogle();
  Future<bool> registration(UserModel user);
  Future<bool> registrationWithGoogle(UserModel user, String? uid);
  late final CollectionReference userReference;
  AbstractUserRepository(){
    userReference = fireStore.collection(userCollection);
  }
}