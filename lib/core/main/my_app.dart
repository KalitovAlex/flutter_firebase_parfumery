import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../auth/bloc/auth/auth_bloc.dart';
import '../../auth/bloc/forgot_password/forgot_password_bloc.dart';
import '../../auth/bloc/google/google_bloc.dart';
import '../../auth/bloc/register/register_bloc.dart';
import 'globals.dart';
import '../routes/routes.gr.dart';
import '../styles/themes.dart';

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