import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/video_listview_builder.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/view_all_button.dart';

@RoutePage()
class OpenVideoPage extends StatelessWidget {
  const OpenVideoPage({super.key});

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
          child: Column(children: [
            SizedBox(
              width: width,
              height: height * 0.4,
              child: Image.asset(
                'assets/audio_items/item_three.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(
                      width: 2,
                      color: AppColors.textFieldColor,
                      strokeAlign: BorderSide.strokeAlignCenter))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/share.svg',
                        ),
                        Text(
                          'Share',
                          style: GoogleFonts.poppins(
                            color: AppColors.tabsIconColor,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [AppTitle(text: 'More'), ViewAllButton()],
                  ),
                ),
                SizedBox(
                    width: width,
                    height: height,
                    child: VideoListViewBuilder()),
              ],
            ),
          ]),
        ));
  }
}
