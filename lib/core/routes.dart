import 'package:auto_route/auto_route.dart';

import 'routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends $AppRouter {

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: AuthRoute.page),
  AutoRoute(page: AuthBoard.page,path: '/'),
  AutoRoute(page: RegisterRoute.page),
  AutoRoute(page: HomeRoute.page)
 ];
}