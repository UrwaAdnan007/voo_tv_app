import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/model/audio_listview_builder.dart';
import 'package:voo_tv_app/config/model/video_listview_builder.dart';
import 'package:voo_tv_app/core/widgets/app_search_bar.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/view_all_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String audioTitle = 'Audio';

  final String videoTitle = 'Videos';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: Center(child: AppSearchBar(hinttext: 'Search audio')),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTitle(text: audioTitle),
                          const ViewAllButton()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.4,
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: AudioListViewBuilder(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTitle(text: videoTitle),
                          const ViewAllButton()
                        ],
                      ),
                    ),
                    SizedBox(
                        width: width,
                        height: height,
                        child: VideoListViewBuilder()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
