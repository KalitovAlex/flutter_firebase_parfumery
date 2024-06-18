import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/auth/auth_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/google/google_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/register/register_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/model/user_model.dart';
import 'package:flutter_firebase_parfumery/core/routes.gr.dart';
import 'package:flutter_firebase_parfumery/firebase_options.dart';
import 'package:flutter_firebase_parfumery/main/models/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/repository/abstract_main_repository.dart';
import 'package:flutter_firebase_parfumery/main/repository/main_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'auth/repository/abstract_user_repository.dart';
import 'auth/repository/user_repository.dart';
import 'core/globals.dart';
import 'core/routes.dart';
import 'core/styles/themes.dart';
void main() async {
  initSingletons();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  await Hive.initFlutter();
  initDependencies();
  await Hive.openBox('favorite');
  await Hive.openBox('cart');
  runApp(const MyApp());
}
void initSingletons(){
  GetIt.I.registerLazySingleton<AbstractUserRepository>(() => UserRepository());
  GetIt.I.registerLazySingleton<UserModel>(() => const UserModel());
  GetIt.I.registerLazySingleton<AbstractMainRepository>(() => MainRepository());
  GetIt.I.registerLazySingleton<Recommendation>(() => const Recommendation());
}
void initDependencies() {
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
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => GoogleBloc()),
        BlocProvider(create: (context) => ForgotPasswordBloc())
      ],
      child: Sizer(
        builder: (context, orientation, deviceType){
          return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(
            deepLinkBuilder: (deepLink) async {
            final preferences = await SharedPreferences.getInstance();
            final uid = preferences.getString('uid');
            if(uid != null){
            await userRepository.sharedAuth(uid);
            recomendationList = await mainRepository.getAllRecomendation();
            return DeepLink([BottomNavigation(response: recomendationList)]);
            }
            else { 
              return const DeepLink([AuthBoard()]);
            }
            },
            navigatorObservers: () => [
              TalkerRouteObserver(talker)
            ],
          ),
          theme: lightTheme,
        );
        },
      ),
    );
  }
}