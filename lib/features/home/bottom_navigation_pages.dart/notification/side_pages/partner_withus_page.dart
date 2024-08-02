import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';

@RoutePage()
class PartnerWithUsPage extends StatelessWidget {
  const PartnerWithUsPage({super.key});
  final String text =
      'Be a part of our drive to reach out to the world with the gospel.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppTitle(text: 'Partner With Us'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.titleColor,
          ),
          onPressed: () {
            context.maybePop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: AppColors.tabsIconColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
    ;
  }
}
