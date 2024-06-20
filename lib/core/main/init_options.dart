import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../auth/model/user_model.dart';
import '../../auth/repository/abstract_user_repository.dart';
import '../../auth/repository/user_repository.dart';
import '../../main/models/recomendation/recommendation.dart';
import '../../main/repository/abstract_main_repository.dart';
import '../../main/repository/main_repository.dart';

void initHive() async{
  await Hive.initFlutter();
  Hive.registerAdapter(RecommendationAdapter());
  await Hive.openBox('favorite');
  await Hive.openBox('cart');
  }
void initSingletons(){
  GetIt.I.registerLazySingleton<AbstractUserRepository>(() => UserRepository());
  GetIt.I.registerLazySingleton<UserModel>(() => const UserModel());
  GetIt.I.registerLazySingleton<AbstractMainRepository>(() => MainRepository());
  GetIt.I.registerLazySingleton<Recommendation>(() => const Recommendation());
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