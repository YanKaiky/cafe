import 'package:cafe/models/notifications.model.dart';
import 'package:cafe/src/pages/notifications/components/card.notifications/card.notifications.information.dart';
import 'package:cafe/src/pages/notifications/components/card.notifications/card.notifications.status.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:cafe/src/utils/enums/status.enum.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNotifications extends StatelessWidget {
  const CardNotifications({
    Key? key,
    required this.notification,
    required this.remove,
  }) : super(key: key);

  final NotificationsModel notification;
  final VoidCallback remove;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
        child: Icon(Icons.delete_rounded),
      ),
      onDismissed: (DismissDirection direction) {
        remove;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orange,
            content: Text(
              '${notification.name} removed',
              style: GoogleFonts.poppins(),
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: size.height / 6,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(yDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardNotificationsImformation(notification: notification),
                VerticalDivider(),
                CardNotificationsStatus(status: StatusEnum.delivering),
              ],
            ),
          ),
        ),
      ),
    );
  }
}