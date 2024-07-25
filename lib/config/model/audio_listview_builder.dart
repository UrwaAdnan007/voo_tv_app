import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/model/audio_model.dart';
import 'package:voo_tv_app/core/widgets/audio_list_tile.dart';

class AudioListViewBuilder extends StatelessWidget {
  AudioListViewBuilder({super.key});

  List<AudioModel> audioItems = [
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_one.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'Invading Systems',
        image: 'assets/audio_items/item_second.png',
        name: 'Apst. Arome Osayi'),
    AudioModel(
        title: 'The Mystery of Light',
        image: 'assets/audio_items/item_three.png',
        name: 'Rev. Donatus'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: audioItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            AudioListTile(audioModel: audioItems[index]));
  }
}
