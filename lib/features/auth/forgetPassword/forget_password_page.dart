import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_button.dart';
import 'package:voo_tv_app/core/widgets/app_textfield.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/password_textfield.dart';

@RoutePage()
class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});
  final String maintitle = 'Forgot Password';
  final String emailaddress = 'Email Address';
  final String emailtextfield = 'example@example.com';
  final String password = 'Password';
  final String enterpassword = 'Enter Password';
  final String resettext = 'Reset';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppTitle(text: maintitle),
                    AppTextField(
                      title: emailaddress,
                      hinttext: emailtextfield,
                    ),
                    PasswordTextField(
                      title: password,
                      hinttext: enterpassword,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppButton(
                      title: resettext,
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
