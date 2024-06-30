
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/models/cart/cart.dart';
import 'package:flutter_firebase_parfumery/main/models/notification/notifications.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/repository/main/abstract_main_repository.dart';
import 'package:flutter_firebase_parfumery/main/repository/profile/abstract_profile_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../auth/model/user_model.dart';
import '../../auth/repository/abstract_user_repository.dart';
final talker = TalkerFlutter.init();

// text style
textStylePicker(context){
  return Theme.of(context).textTheme;
}


//GetIt init
AbstractUserRepository userRepository = GetIt.I<AbstractUserRepository>();
AbstractMainRepository mainRepository = GetIt.I<AbstractMainRepository>();
AbstractProfileRepository profileRepository = GetIt.I<AbstractProfileRepository>();
UserModel userModel = GetIt.I<UserModel>();
Cart diCart = GetIt.I<Cart>();
Notifications notificationModel = GetIt.I<Notifications>();
// AbstractMainRepository mainRepository = GetIt.I<AbstractMainRepository>();


//beautiful features 

//Firebase features
String? uid;
final fireStore = FirebaseFirestore.instance;

//favorites
List favorite = [];
List<Recommendation> recomendationList = [];
List<Notifications> notificationsList = [];

//hive
late List<dynamic> allCart;


//profile
XFile? selectImage;

//init notifications method
getNotifications () async {
  notificationsList = await mainRepository.getAllNotifications();
}