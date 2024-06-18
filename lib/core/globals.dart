
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/models/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/repository/abstract_main_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../auth/model/user_model.dart';
import '../auth/repository/abstract_user_repository.dart';
// Dio dio = Dio();
//   apiRepository() {
//       BaseOptions options =  BaseOptions(
//           baseUrl: "http://147.45.252.218/api",
//           receiveDataWhenStatusError: true,
//           connectTimeout: const Duration(seconds: 5),
//           receiveTimeout: const Duration(seconds: 10) 
//           );

//       dio = Dio(options);
//     }
final talker = TalkerFlutter.init();

// text style
textStylePicker(context){
  return Theme.of(context).textTheme;
}


//GetIt init
AbstractUserRepository userRepository = GetIt.I<AbstractUserRepository>();
AbstractMainRepository mainRepository = GetIt.I<AbstractMainRepository>();
UserModel userModel = GetIt.I<UserModel>();
// AbstractMainRepository mainRepository = GetIt.I<AbstractMainRepository>();


//beautiful features 



//Firebase features
String? uid;
final fireStore = FirebaseFirestore.instance;
const String userCollection = 'users';
const String bannersCollection = 'banners';
const String categoriesCollection = 'categories';
const String recomendationCollection = 'recomendation';

//favorites
List favorite = [];
List<Recommendation> recomendationList = [];