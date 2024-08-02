import 'package:flutter/material.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/video_listview_builder.dart';
import 'package:voo_tv_app/core/widgets/app_search_bar.dart';

class VideosTab extends StatelessWidget {
  const VideosTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Center(child: AppSearchBar(hinttext: 'Search audio')),
          ),
          SizedBox(width: width, height: height, child: VideoListViewBuilder()),
        ],
      ),
    );
  }
}
