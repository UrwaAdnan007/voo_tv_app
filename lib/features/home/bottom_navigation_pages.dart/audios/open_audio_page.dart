import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_search_bar.dart';

@RoutePage()
class OpenAudioPage extends StatelessWidget {
  const OpenAudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
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
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Center(child: AppSearchBar(hinttext: 'Search audio')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Mystery of Light',
                  style: GoogleFonts.poppins(
                    color: AppColors.tabsIconColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Apst. Arome Osayi',
                  style: GoogleFonts.poppins(
                    color: AppColors.tabsIconColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: width,
              height: height * 0.4,
              child: Image.asset(
                'assets/audio_items/item_three.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ])));
  }
}
