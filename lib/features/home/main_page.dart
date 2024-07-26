import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        VideosRoute(),
        AudioRoute(),
        PrayerRequestRoute(),
        NotificationRoute()
      ],
      builder: (context, child) {
        final TabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.backgroundColor,
            currentIndex: TabsRouter.activeIndex,
            onTap: (value) {
              TabsRouter.setActiveIndex(value);
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg',
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColors.tabsSelectedColor, BlendMode.srcIn),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/video.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/video.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColors.tabsSelectedColor, BlendMode.srcIn),
                  ),
                  label: 'Videos'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/audio.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/audio.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColors.tabsSelectedColor, BlendMode.srcIn),
                  ),
                  label: 'Audios'),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/prayer.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/icons/prayer.svg',
                  colorFilter: const ColorFilter.mode(
                      AppColors.tabsSelectedColor, BlendMode.srcIn),
                ),
                label: 'Prayer Request',
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/notification.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColors.tabsSelectedColor, BlendMode.srcIn),
                  ),
                  label: 'Notification'),
            ],
            selectedLabelStyle: GoogleFonts.poppins(
              color: AppColors.titleColor,
              fontSize: 8.0,
              height: 4,
              fontWeight: FontWeight.w400,
            ),
            iconSize: 40,
            selectedItemColor: AppColors.tabsSelectedColor,
            unselectedItemColor: AppColors.tabsIconColor,
            showUnselectedLabels: true,
            unselectedFontSize: 8,
          ),
        );
      },
    );
  }
}
