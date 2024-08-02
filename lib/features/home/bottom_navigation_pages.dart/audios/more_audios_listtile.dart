import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/model/audio_model.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class MoreAudiosLisTile extends StatelessWidget {
  const MoreAudiosLisTile({super.key, required this.audioModel});
  final AudioModel audioModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: GestureDetector(
          onTap: () {
            context.pushRoute(const OpenAudioRoute());
          },
          child: Container(
            width: 390,
            height: 112,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 25,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        audioModel.image,
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            audioModel.title,
                            style: GoogleFonts.poppins(
                              color: AppColors.tabsIconColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              '1:10:35',
                              style: GoogleFonts.poppins(
                                color: AppColors.titleColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        audioModel.name,
                        style: GoogleFonts.poppins(
                          color: AppColors.smalltextColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
