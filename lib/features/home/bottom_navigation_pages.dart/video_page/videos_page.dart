import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:voo_tv_app/core/widgets/app_tab_controller.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/live_tab.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/videos_tab.dart';

@RoutePage()
class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabController(
        tab1: 'Live',
        tab2: 'Videos',
        tab1Page: LiveTab(),
        tab2Page: VideosTab());
  }
}
