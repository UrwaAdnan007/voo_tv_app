import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_button.dart';

@RoutePage()
class SplashSecondPage extends StatelessWidget {
  const SplashSecondPage({super.key});
  final String bgImg = 'assets/images/splash_second_bg.png';
  final String blurBG = 'assets/images/gradient_bg.svg';

  final String signuptext = 'Create Account';
  final String logintext = 'Login';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.bottomCenter,
        // fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              bgImg,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.3,
              width: width,
              child: SvgPicture.asset(
                blurBG,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              width: width,
              height: height * 0.3,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppButton(
                      title: signuptext,
                      onTap: () {
                        context.pushRoute(const SignupRoute());
                      },
                    ),
                    AppButton(
                      title: logintext,
                      onTap: () {
                        context.pushRoute(const LoginRoute());
                      },
                      color: AppColors.whiteColor,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
