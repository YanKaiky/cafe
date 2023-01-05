import 'package:cafe/models/notifications.model.dart';
import 'package:cafe/services/notifications.service.dart';
import 'package:cafe/src/pages/notifications/components/card.notifications/card.notifications.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyNotifications extends StatefulWidget {
  const BodyNotifications({super.key});

  @override
  State<BodyNotifications> createState() => _BodyNotificationsState();
}

class _BodyNotificationsState extends State<BodyNotifications> {
  @override
  Widget build(BuildContext context) {
    final List<NotificationsModel> notifications =
        NotificationsService.notifications;
    Size size = MediaQuery.of(context).size;

    return ListView.separated(
      padding: EdgeInsets.all(yDefaultPadding / 2),
      itemCount: notifications.length,
      separatorBuilder: (context, _) => SizedBox(width: size.width / 12),
      itemBuilder: (context, i) {
        return CardNotifications(
          notification: notifications[i],
          remove: () {
            setState(() {
              notifications.removeAt(i);
            });
          },
        );
      },
    );
  }
}
