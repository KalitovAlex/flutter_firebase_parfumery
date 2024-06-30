import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/cart/cart.dart';
import 'package:flutter_firebase_parfumery/main/models/notification/notifications.dart';
import 'package:flutter_firebase_parfumery/main/repository/profile/abstract_profile_repository.dart';
import 'package:flutter_firebase_parfumery/main/repository/profile/profile_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../auth/model/user_model.dart';
import '../../auth/repository/abstract_user_repository.dart';
import '../../auth/repository/user_repository.dart';
import '../../main/models/recomendation/recommendation.dart';
import '../../main/repository/main/abstract_main_repository.dart';
import '../../main/repository/main/main_repository.dart';
import 'consants.dart';
void initHive() async{
  await Hive.initFlutter();
  Hive.registerAdapter(RecommendationAdapter());
  Hive.registerAdapter(CartAdapter());
  await Hive.openBox(favorites);
  await Hive.openBox(cart);
  allCart = await mainRepository.getCard();
  }
void initSingletons(){
  GetIt.I.registerLazySingleton<AbstractUserRepository>(() => UserRepository());
  GetIt.I.registerLazySingleton<UserModel>(() => const UserModel());
  GetIt.I.registerLazySingleton<AbstractMainRepository>(() => MainRepository());
  GetIt.I.registerLazySingleton<Recommendation>(() => const Recommendation());
  GetIt.I.registerLazySingleton<Cart>(() => const Cart());
  GetIt.I.registerLazySingleton<AbstractProfileRepository>(() => ProfileRepository());
  GetIt.I.registerLazySingleton<Notifications>(() => const Notifications());
}
void initTalker() {
  GetIt.I.registerSingleton<Talker>(talker);
  talker.info('App Started');
  Bloc.observer = TalkerBlocObserver(
      talker: talker,
      settings: const TalkerBlocLoggerSettings(
          printCreations: true,
          printClosings: true,
          printStateFullData: true,
          printChanges: true,
          printEventFullData: true));
}