import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_bottom_sheet.dart';
import 'package:voo_tv_app/core/widgets/app_textfield.dart';

class PrayerTab extends StatelessWidget {
  const PrayerTab({super.key});
  final String name = 'Name';
  final String nametextfield = 'Please enter your name';
  final String emailaddress = 'Email Address';
  final String emailtextfield = 'example@example.com';
  final String location = 'Location';
  final String locationHint = 'Choose Country';
  final String testimony = 'Testimony';
  final String testimonyHint = 'Share your testimony';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 92,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppTextField(
                      title: name,
                      hinttext: nametextfield,
                    ),
                    AppTextField(
                      title: emailaddress,
                      hinttext: emailtextfield,
                    ),
                    AppTextField(
                      title: location,
                      hinttext: locationHint,
                    ),
                    AppTextField(
                      title: testimony,
                      maxlines: 9,
                      hinttext: testimonyHint,
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 8,
                  child: AppBottomSheet(
                    title: 'Request Delivered',
                    buttontitle: 'Done',
                    subtitle:
                        'As you cast your burdens on the Lord and share with brethren, God will answer your request!',
                    sheetButtonTitle: 'Done',
                    onTap: () {
                      context.maybePop();
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
