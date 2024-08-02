import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/model/notification_model.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    super.key,
    required this.notificationModel,
  });
  final NotificationModel notificationModel;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                notificationModel.name,
                style: GoogleFonts.poppins(
                  color: AppColors.titleColor,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                notificationModel.time,
                style: GoogleFonts.poppins(
                  color: AppColors.textColor,
                  fontSize: 8.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          subtitle: Text(
            notificationModel.comment,
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
