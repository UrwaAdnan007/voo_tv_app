import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/notification/notification_builder.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/comments_listtile.dart';

@RoutePage()
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTitle(text: 'Notifications'),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          context.pushRoute(const AboutUsRoute());
                        },
                        icon: const Icon(
                          Icons.info_outlined,
                        )),
                    IconButton(
                      onPressed: () {
                        context.pushRoute(const PartnerWithUsRoute());
                      },
                      icon: const Icon(
                        Icons.handshake_rounded,
                      ),
                      tooltip: 'Partner With Us',
                    ),
                    IconButton(
                      onPressed: () {
                        context.pushRoute(const DonationRoute());
                      },
                      icon: const Icon(
                        Icons.account_balance_wallet,
                      ),
                      tooltip: 'Partner With Us',
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: width,
            height: height,
            child: NotificationListviewBuilder(),
          )
        ],
      ),
    );
  }
}
