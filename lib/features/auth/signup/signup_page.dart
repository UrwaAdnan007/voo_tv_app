import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_button.dart';
import 'package:voo_tv_app/core/widgets/app_checkbox.dart';
import 'package:voo_tv_app/core/widgets/app_textfield.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/create_account_text.dart';
import 'package:voo_tv_app/core/widgets/password_textfield.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  final String maintitle = 'Create your account';
  final String firstName = 'First Name';
  final String secondName = 'Second Name';
  final String emailaddress = 'Email Address';
  final String emailtextfield = 'example@example.com';
  final String password = 'Password';
  final String enterpassword = 'Enter Password';
  final String signuptext = 'Create Account';
  final String title = 'Already have an account?';
  final String text = 'Sign in';
  final String checkboxText =
      'I request to receive notifications and updates from VOOTV';
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
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppTitle(text: maintitle),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: AppTextField(
                            title: firstName,
                            hinttext: firstName,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 5,
                          child: AppTextField(
                            title: secondName,
                            hinttext: secondName,
                          ),
                        ),
                      ],
                    ),
                    AppTextField(
                      title: emailaddress,
                      hinttext: emailtextfield,
                    ),
                    PasswordTextField(
                      title: password,
                      hinttext: enterpassword,
                    ),
                    AppCheckbox(
                      checkboxText: checkboxText,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppButton(
                      title: signuptext,
                      onTap: () {
                        context.pushRoute(const MainRoute());
                      },
                    ),
                    CreateAccountText(
                      title: title,
                      text: text,
                      onTap: () {
                        context.pushRoute(const LoginRoute());
                      },
                    ),
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
