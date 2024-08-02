import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/model/audio_model.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AudioListTile extends StatelessWidget {
  const AudioListTile({super.key, required this.audioModel});

  final AudioModel audioModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 18),
      child: Container(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  audioModel.image,
                  fit: BoxFit.cover,
                  width: 160,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    audioModel.title,
                    style: GoogleFonts.poppins(
                      color: AppColors.tabsIconColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    audioModel.name,
                    style: GoogleFonts.poppins(
                      color: AppColors.tabsIconColor,
                      fontSize: 8.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
