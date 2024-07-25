import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/model/video_model.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class VideoListTile extends StatelessWidget {
  const VideoListTile({super.key, required this.videoModel});

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: 390,
        height: 112,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 45,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    videoModel.image,
                    fit: BoxFit.cover,
                    width: 143,
                    height: 80,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoModel.title,
                    style: GoogleFonts.poppins(
                      color: AppColors.tabsIconColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    videoModel.name,
                    style: GoogleFonts.poppins(
                      color: AppColors.smalltextColor,
                      fontSize: 8.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 21,
                            width: 38,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColors.cancelIconColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              videoModel.duraton,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: AppColors.smalltextColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 21,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.tabsSelectedColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              videoModel.newTag.toString(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: AppColors.whiteColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
