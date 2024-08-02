import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/core/widgets/app_tab_controller.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/prayer/prayer_tab.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/prayer/testimony_tab.dart';

@RoutePage()
class PrayerRequestPage extends StatelessWidget {
  const PrayerRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabController(
        tab1: 'Prayer',
        tab2: 'Testimony',
        tab1Page: PrayerTab(),
        tab2Page: TestimonyTab());
  }
}
