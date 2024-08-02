import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/audios/audio_listview_builder.dart';
import 'package:voo_tv_app/core/widgets/app_search_bar.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/audios/more_audio_builder.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/audios/more_audios_listtile.dart';

@RoutePage()
class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Center(child: AppSearchBar(hinttext: 'Search audio')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: AppTitle(text: 'Recent Messages'),
          ),
          SizedBox(
            height: height * 0.4,
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: AudioListViewBuilder(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: AppTitle(text: 'More Audios'),
          ),
          Column(
            children: [
              SizedBox(width: width, height: height, child: MoreAudioBuilder()),
            ],
          ),
        ],
      ),
    );
  }
}
