import 'package:auto_route/auto_route.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  static const String _splashPage = '/splash';
  static const String _loginPage = '/login';
  static const String _signupPage = '/signup';
  
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page, path: _loginPage),
        AutoRoute(page: SignupRoute.page, path: _signupPage),
      
      ];
}
