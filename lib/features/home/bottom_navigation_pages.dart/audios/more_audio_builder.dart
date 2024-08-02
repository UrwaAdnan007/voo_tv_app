import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/model/audio_model.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/audios/more_audios_listtile.dart';

class MoreAudioBuilder extends StatelessWidget {
  MoreAudioBuilder({super.key});
  List<AudioModel> audioItems = [
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: audioItems.length,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => MoreAudiosLisTile(
              audioModel: audioItems[index],
            ));
    ;
  }
}
