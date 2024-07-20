import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_button.dart';
import 'package:voo_tv_app/core/widgets/app_textfield.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/create_account_text.dart';
import 'package:voo_tv_app/core/widgets/password_textfield.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final String maintitle = 'Login';
  final String emailaddress = 'Email Address';
  final String emailtextfield = 'example@example.com';
  final String password = 'Password';
  final String enterpassword = 'Enter Password';
  final String logintext = 'Login';
  final String title = 'Don’t have an account?';
  final String text = 'Create Account';
  final String forgetpassword = 'Forget Password?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(const ForgetPasswordRoute());
                    },
                    child: Text(
                      forgetpassword,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: AppColors.forgetpasswordColor,
                        fontSize: 12.0,
                        height: 2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppButton(
                    title: logintext,
                    onTap: () {},
                  ),
                  CreateAccountText(
                    title: title,
                    text: text,
                    onTap: () {
                      context.pushRoute(const SignupRoute());
                    },
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
