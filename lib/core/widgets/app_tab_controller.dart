import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppTabController extends StatelessWidget {
  const AppTabController(
      {super.key,
      required this.tab1,
      required this.tab2,
      required this.tab1Page,
      required this.tab2Page});
  final String tab1;
  final String tab2;
  final Widget tab1Page;
  final Widget tab2Page;
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
                    tab1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    tab2,
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
          body: TabBarView(children: [tab1Page, tab2Page]),
        ));
  }
}
