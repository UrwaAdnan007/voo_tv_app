import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/model/comments_model.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/video_page/comments_listtile.dart';

class CommentsListviewBuilder extends StatelessWidget {
  CommentsListviewBuilder({super.key});
  List<CommentsModel> commentsItems = [
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    CommentsModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: commentsItems.length,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) =>
            CommentsListTile(commentsModel: commentsItems[index]));
    ;
  }
}
