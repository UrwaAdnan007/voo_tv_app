import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/message_textfield.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/comments_listview_builder.dart';

class LiveTab extends StatelessWidget {
  const LiveTab({super.key});
  final String text =
      'International Eagles Conference 2021, Day 1 [Evening....';

  final String loremIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                color: AppColors.tabsIconColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: width,
            height: height * 0.3,
            child: Image.asset(
              'assets/audio_items/item_three.png',
              fit: BoxFit.cover,
            ),
          ),
          ExpandableNotifier(
              child: ScrollOnExpand(
            scrollOnCollapse: false,
            scrollOnExpand: true,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  iconSize: 35,
                  tapBodyToCollapse: true,
                  iconPadding: EdgeInsets.all(16),
                  iconRotationAngle: 0,
                  expandIcon: Icons.arrow_forward_ios_rounded,
                  collapseIcon: Icons.keyboard_arrow_down_rounded,
                  fadeCurve: Curves.bounceIn),
              header: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Comments',
                  style: GoogleFonts.poppins(
                    color: AppColors.titleColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              collapsed: const Text(''),
              expanded: Stack(
                children: <Widget>[
                  SizedBox(
                      width: width,
                      height: height,
                      child: CommentsListviewBuilder()),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const MessageTextField(hinttext: 'Message'),
                    ),
                  )
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
// for (var _ in Iterable.generate(10))