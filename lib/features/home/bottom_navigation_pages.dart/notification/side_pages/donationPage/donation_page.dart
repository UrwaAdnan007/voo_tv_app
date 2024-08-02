import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_tab_controller.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/notification/side_pages/donationPage/one_time_page.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/notification/side_pages/donationPage/recurring_page.dart';

@RoutePage()
class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const AppTitle(text: 'Select a Payment Method'),
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 9,
            child: AppTabController(
                tab1: 'One-Time',
                tab2: 'Recurring',
                tab1Page: OneTimePage(),
                tab2Page: RecurringPage()),
          ),
        ],
      ),
    );
  }
}
