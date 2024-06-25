import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_parfumery/auth/model/user_model.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';

import '../../core/main/consants.dart';

abstract class AbstractUserRepository {
  Future<bool> auth (String? login, String? password);
  Future<bool> authWithGoogle();
  Future<bool> registration(UserModel user);
  Future<bool> registrationWithGoogle(UserModel user);
  Future<bool> resetPassword(String email);
  Future<bool> sharedAuth(String uid);
  Future<bool> regWithGoogle();
  Future<bool> changeUser(String? photo, String emailChange, String passwordChange, String phoneNumberChange, String usernameChange);
  late final CollectionReference userReference;
  AbstractUserRepository(){
    userReference = fireStore.collection(userCollection);
  }
}