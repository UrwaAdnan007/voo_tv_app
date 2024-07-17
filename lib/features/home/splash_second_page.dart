import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/utils/custom_btn.dart';

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
    return Container(
      decoration: BoxDecoration(
          color: AppColor.bgColor,
          image: DecorationImage(
            image: AssetImage(bgImg),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: SvgPicture.asset(
                blurBG,
                width: width,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: height * 0.3,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: SizedBox(
                        height: height * 0.07,
                        child: CustomButton(
                            height: height,
                            width: double.infinity,
                            onTap: () {
                              context.pushRoute(const SignupRoute());
                            },
                            color: AppColor.btnColor,
                            child: Center(
                              child: Text(
                                signuptext,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: AppColor.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  // height: 19.2,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: SizedBox(
                        height: height * 0.07,
                        child: CustomButton(
                            height: height,
                            width: double.infinity,
                            onTap: () {
                              context.pushRoute(const LoginRoute());
                            },
                            color: AppColor.whiteColor,
                            child: Center(
                              child: Text(
                                logintext,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: AppColor.btnColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  // height: 19.2,
                                ),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//  CustomButton(
//                         height: 200,
//                         width: double.infinity,
//                         onTap: () {
//                           context.pushRoute(const SignupRoute());
//                         },
//                         color: AppColor.btnColor,
//                         child: Text(
//                           text,
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.poppins(
//                             color: AppColor.whiteColor,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             height: 19.2,
//                           ),
//                         )),
