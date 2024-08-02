import 'package:flutter/material.dart';

import 'package:voo_tv_app/config/model/notification_model.dart';
import 'package:voo_tv_app/features/home/bottom_navigation_pages.dart/notification/notification_listtile.dart';

class NotificationListviewBuilder extends StatelessWidget {
  NotificationListviewBuilder({super.key});

  List<NotificationModel> notificationItems = [
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
    NotificationModel(
        time: '34 min',
        image: '',
        name: 'Ajayi Ogbomosho',
        comment:
            'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: notificationItems.length,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) =>
            NotificationListTile(notificationModel: notificationItems[index]));
  }
}
