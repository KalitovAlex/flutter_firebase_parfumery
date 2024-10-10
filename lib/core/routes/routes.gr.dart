// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/cupertino.dart' as _i15;
import 'package:flutter/material.dart' as _i17;
import 'package:flutter_firebase_parfumery/auth/screen/auth_board.dart' as _i1;
import 'package:flutter_firebase_parfumery/auth/screen/auth_screen.dart' as _i2;
import 'package:flutter_firebase_parfumery/auth/screen/forgot_password.dart'
    as _i6;
import 'package:flutter_firebase_parfumery/auth/screen/google_reg_screen.dart'
    as _i7;
import 'package:flutter_firebase_parfumery/auth/screen/register_screen.dart'
    as _i11;
import 'package:flutter_firebase_parfumery/main/bottom_navigation.dart' as _i3;
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart'
    as _i16;
import 'package:flutter_firebase_parfumery/main/screen/bucket_screen.dart'
    as _i4;
import 'package:flutter_firebase_parfumery/main/screen/favorite_screen.dart'
    as _i5;
import 'package:flutter_firebase_parfumery/main/screen/home/home_screen.dart'
    as _i8;
import 'package:flutter_firebase_parfumery/main/screen/home/notification_screen.dart'
    as _i9;
import 'package:flutter_firebase_parfumery/main/screen/home/search_screen.dart'
    as _i12;
import 'package:flutter_firebase_parfumery/main/screen/subcategories_screen.dart'
    as _i13;
import 'package:flutter_firebase_parfumery/main/screen/profile_screen.dart'
    as _i10;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AuthBoard.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthBoard(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      final args = routeData.argsAs<BottomNavigationRouteArgs>(
          orElse: () => const BottomNavigationRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.BottomNavigationScreen(
          key: args.key,
          response: args.response,
        ),
      );
    },
    BucketRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BucketScreen(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FavoriteScreen(),
      );
    },
    ForgotPassword.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordArgs>(
          orElse: () => const ForgotPasswordArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ForgotPassword(key: args.key),
      );
    },
    GoogleRegRoute.name: (routeData) {
      final args = routeData.argsAs<GoogleRegRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.GoogleRegScreen(
          key: args.key,
          uid: args.uid,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.HomeScreen(
          key: args.key,
          response: args.response,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.RegisterScreen(key: args.key),
      );
    },
    SearchRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SearchScreen(),
      );
    },
    SubCategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<SubCategoriesRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SubCategoriesScreen(
          key: args.key,
          subCategoryName: args.subCategoryName,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthBoard]
class AuthBoard extends _i14.PageRouteInfo<void> {
  const AuthBoard({List<_i14.PageRouteInfo>? children})
      : super(
          AuthBoard.name,
          initialChildren: children,
        );

  static const String name = 'AuthBoard';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i14.PageRouteInfo<void> {
  const AuthRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BottomNavigationScreen]
class BottomNavigationRoute
    extends _i14.PageRouteInfo<BottomNavigationRouteArgs> {
  BottomNavigationRoute({
    _i15.Key? key,
    List<_i16.Recommendation>? response,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          BottomNavigationRoute.name,
          args: BottomNavigationRouteArgs(
            key: key,
            response: response,
          ),
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static const _i14.PageInfo<BottomNavigationRouteArgs> page =
      _i14.PageInfo<BottomNavigationRouteArgs>(name);
}

class BottomNavigationRouteArgs {
  const BottomNavigationRouteArgs({
    this.key,
    this.response,
  });

  final _i15.Key? key;

  final List<_i16.Recommendation>? response;

  @override
  String toString() {
    return 'BottomNavigationRouteArgs{key: $key, response: $response}';
  }
}

/// generated route for
/// [_i4.BucketScreen]
class BucketRoute extends _i14.PageRouteInfo<void> {
  const BucketRoute({List<_i14.PageRouteInfo>? children})
      : super(
          BucketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BucketRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FavoriteScreen]
class FavoriteRoute extends _i14.PageRouteInfo<void> {
  const FavoriteRoute({List<_i14.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgotPassword]
class ForgotPassword extends _i14.PageRouteInfo<ForgotPasswordArgs> {
  ForgotPassword({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ForgotPassword.name,
          args: ForgotPasswordArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgotPassword';

  static const _i14.PageInfo<ForgotPasswordArgs> page =
      _i14.PageInfo<ForgotPasswordArgs>(name);
}

class ForgotPasswordArgs {
  const ForgotPasswordArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.GoogleRegScreen]
class GoogleRegRoute extends _i14.PageRouteInfo<GoogleRegRouteArgs> {
  GoogleRegRoute({
    _i15.Key? key,
    required dynamic uid,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          GoogleRegRoute.name,
          args: GoogleRegRouteArgs(
            key: key,
            uid: uid,
          ),
          initialChildren: children,
        );

  static const String name = 'GoogleRegRoute';

  static const _i14.PageInfo<GoogleRegRouteArgs> page =
      _i14.PageInfo<GoogleRegRouteArgs>(name);
}

class GoogleRegRouteArgs {
  const GoogleRegRouteArgs({
    this.key,
    required this.uid,
  });

  final _i15.Key? key;

  final dynamic uid;

  @override
  String toString() {
    return 'GoogleRegRouteArgs{key: $key, uid: $uid}';
  }
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i14.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i17.Key? key,
    required List<_i16.Recommendation> response,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            response: response,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<HomeRouteArgs> page =
      _i14.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.response,
  });

  final _i17.Key? key;

  final List<_i16.Recommendation> response;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, response: $response}';
  }
}

/// generated route for
/// [_i9.NotificationScreen]
class NotificationRoute extends _i14.PageRouteInfo<void> {
  const NotificationRoute({List<_i14.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RegisterScreen]
class RegisterRoute extends _i14.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<RegisterRouteArgs> page =
      _i14.PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.SearchScreen]
class SearchRoute extends _i14.PageRouteInfo<void> {
  const SearchRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SubCategoriesScreen]
class SubCategoriesRoute extends _i14.PageRouteInfo<SubCategoriesRouteArgs> {
  SubCategoriesRoute({
    _i17.Key? key,
    required String? subCategoryName,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SubCategoriesRoute.name,
          args: SubCategoriesRouteArgs(
            key: key,
            subCategoryName: subCategoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'SubCategoriesRoute';

  static const _i14.PageInfo<SubCategoriesRouteArgs> page =
      _i14.PageInfo<SubCategoriesRouteArgs>(name);
}

class SubCategoriesRouteArgs {
  const SubCategoriesRouteArgs({
    this.key,
    required this.subCategoryName,
  });

  final _i17.Key? key;

  final String? subCategoryName;

  @override
  String toString() {
    return 'SubCategoriesRouteArgs{key: $key, subCategoryName: $subCategoryName}';
  }
}
