import 'package:auto_route/auto_route.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/notification/side_pages/about_us_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  static const String _splashsecondPage = '/splashsecond';
  static const String _loginPage = '/login';
  static const String _signupPage = '/signup';
  static const String _forgetpasswordpage = '/forgetpassword';
  static const String _mainPage = '/mainpage';
  static const String _homePage = 'homepage';
  static const String _videosPage = 'videopage';
  static const String _audioPage = 'audiopage';
  static const String _prayerRequestPage = 'prayerRequestpage';
  static const String _notificationPage = 'notificationpage';
  static const String _openVideoPage = '/openvideopage';
  static const String _openAudioPage = '/openaudiopage';
  static const String _aboutUsPage = '/aboutuspage';
  static const String _partnerWithUsPage = '/partnerwithuspage';
  static const String _donationPage = '/donationpage';
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page, path: _loginPage),
        AutoRoute(page: SignupRoute.page, path: _signupPage),
        AutoRoute(page: ForgetPasswordRoute.page, path: _forgetpasswordpage),
        AutoRoute(page: SplashSecondRoute.page, path: _splashsecondPage),
        AutoRoute(page: OpenVideoRoute.page, path: _openVideoPage),
        AutoRoute(page: OpenAudioRoute.page, path: _openAudioPage),
        AutoRoute(page: AboutUsRoute.page, path: _aboutUsPage),
        AutoRoute(page: PartnerWithUsRoute.page, path: _partnerWithUsPage),
        AutoRoute(page: DonationRoute.page, path: _donationPage),
        AutoRoute(page: MainRoute.page, path: _mainPage, children: [
          AutoRoute(page: HomeRoute.page, path: _homePage),
          AutoRoute(page: VideosRoute.page, path: _videosPage),
          AutoRoute(page: AudioRoute.page, path: _audioPage),
          AutoRoute(page: PrayerRequestRoute.page, path: _prayerRequestPage),
          AutoRoute(page: NotificationRoute.page, path: _notificationPage),
        ])
      ];
}
