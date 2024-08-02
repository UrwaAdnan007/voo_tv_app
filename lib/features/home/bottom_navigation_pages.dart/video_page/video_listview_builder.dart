import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/model/video_model.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/video_list_tile.dart';

class VideoListViewBuilder extends StatelessWidget {
  VideoListViewBuilder({super.key});

  List<VideoModel> videoItems = [
    VideoModel(
        title: 'To Him That Overcometh',
        image: 'assets/video_items/first_item.png',
        duraton: '1:01:15',
        newTag: 'New',
        name: 'Apst. Arome Osayi'),
    VideoModel(
        title: 'To Him That Overcometh',
        image: 'assets/video_items/item_two.png',
        duraton: '1:01:15',
        newTag: 'New',
        name: 'Apst. Arome Osayi'),
    VideoModel(
        title: 'To Him That Overcometh',
        image: 'assets/video_items/item_three.png',
        duraton: '1:01:15',
        newTag: 'New',
        name: 'Apst. Arome Osayi'),
    VideoModel(
        title: 'Apostolic Empowerment Confere..',
        duraton: '1:01:15',
        newTag: 'New',
        image: 'assets/video_items/item_four.png',
        name: 'Apst. Arome Osayi'),
    VideoModel(
        title: 'To Him That Overcometh',
        image: 'assets/video_items/item_five.png',
        duraton: '1:01:15',
        newTag: 'New',
        name: 'Apst. Arome Osayi'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videoItems.length,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => VideoListTile(
              videoModel: videoItems[index],
            ));
  }
}
