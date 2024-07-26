import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/live_tab.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/videos_tab.dart';

@RoutePage()
class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.backgroundColor,
            bottom: TabBar(
              indicatorColor: AppColors.tabsSelectedColor,
              unselectedLabelColor: AppColors.checkboxfilledColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
              labelColor: AppColors.tabsSelectedColor,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Text(
                    'Live TV',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Videos',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [LiveTab(), VideosTab()]),
        ));
  }
}
