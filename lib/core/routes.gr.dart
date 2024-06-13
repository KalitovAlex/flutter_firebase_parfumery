// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter_firebase_parfumery/auth/screen/auth_board.dart' as _i1;
import 'package:flutter_firebase_parfumery/auth/screen/auth_screen.dart' as _i2;
import 'package:flutter_firebase_parfumery/auth/screen/forgot_password.dart'
    as _i4;
import 'package:flutter_firebase_parfumery/auth/screen/google_reg_screen.dart'
    as _i5;
import 'package:flutter_firebase_parfumery/auth/screen/register_screen.dart'
    as _i7;
import 'package:flutter_firebase_parfumery/main/bottom_navigation.dart' as _i3;
import 'package:flutter_firebase_parfumery/main/screen/home_screen.dart' as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthBoard.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthBoard(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    BottomNavigation.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BottomNavigation(),
      );
    },
    ForgotPassword.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordArgs>(
          orElse: () => const ForgotPasswordArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ForgotPassword(key: args.key),
      );
    },
    GoogleRegRoute.name: (routeData) {
      final args = routeData.argsAs<GoogleRegRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.GoogleRegScreen(
          key: args.key,
          uid: args.uid,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.RegisterScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthBoard]
class AuthBoard extends _i8.PageRouteInfo<void> {
  const AuthBoard({List<_i8.PageRouteInfo>? children})
      : super(
          AuthBoard.name,
          initialChildren: children,
        );

  static const String name = 'AuthBoard';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i8.PageRouteInfo<void> {
  const AuthRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BottomNavigation]
class BottomNavigation extends _i8.PageRouteInfo<void> {
  const BottomNavigation({List<_i8.PageRouteInfo>? children})
      : super(
          BottomNavigation.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigation';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ForgotPassword]
class ForgotPassword extends _i8.PageRouteInfo<ForgotPasswordArgs> {
  ForgotPassword({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ForgotPassword.name,
          args: ForgotPasswordArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgotPassword';

  static const _i8.PageInfo<ForgotPasswordArgs> page =
      _i8.PageInfo<ForgotPasswordArgs>(name);
}

class ForgotPasswordArgs {
  const ForgotPasswordArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.GoogleRegScreen]
class GoogleRegRoute extends _i8.PageRouteInfo<GoogleRegRouteArgs> {
  GoogleRegRoute({
    _i9.Key? key,
    required dynamic uid,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          GoogleRegRoute.name,
          args: GoogleRegRouteArgs(
            key: key,
            uid: uid,
          ),
          initialChildren: children,
        );

  static const String name = 'GoogleRegRoute';

  static const _i8.PageInfo<GoogleRegRouteArgs> page =
      _i8.PageInfo<GoogleRegRouteArgs>(name);
}

class GoogleRegRouteArgs {
  const GoogleRegRouteArgs({
    this.key,
    required this.uid,
  });

  final _i9.Key? key;

  final dynamic uid;

  @override
  String toString() {
    return 'GoogleRegRouteArgs{key: $key, uid: $uid}';
  }
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterScreen]
class RegisterRoute extends _i8.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i8.PageInfo<RegisterRouteArgs> page =
      _i8.PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}
