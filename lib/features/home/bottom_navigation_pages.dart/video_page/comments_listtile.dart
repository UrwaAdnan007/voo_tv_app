import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/model/comments_model.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class CommentsListTile extends StatelessWidget {
  const CommentsListTile({
    super.key,
    required this.commentsModel,
  });
  final CommentsModel commentsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            maxRadius: 32,
            backgroundColor: Colors.amber,
          ),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Text(
                  commentsModel.name,
                  style: GoogleFonts.poppins(
                    color: AppColors.titleColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppColors.checkboxfilledColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  commentsModel.time,
                  style: GoogleFonts.poppins(
                    color: AppColors.textColor,
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Text(
            commentsModel.comment,
            style: GoogleFonts.poppins(
              color: AppColors.checkboxfilledColor,
              fontSize: 8.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
