import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/auth/auth_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/google/google_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/register/register_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/model/user_model.dart';
import 'package:flutter_firebase_parfumery/firebase_options.dart';
import 'package:get_it/get_it.dart';
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
  final preferences = await SharedPreferences.getInstance();
  final uid = preferences.getString('uid');
  initDependencies();
  runApp(MyApp(uid: uid,));
}
void initSingletons(){
  GetIt.I.registerLazySingleton<AbstractUserRepository>(() => UserRepository());
  GetIt.I.registerLazySingleton<UserModel>(() => const UserModel());
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
  MyApp({super.key, required uid});
  String? uid;

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
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(
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