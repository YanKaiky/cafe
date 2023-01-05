import 'package:cafe/models/notifications.model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNotificationsImformation extends StatelessWidget {
  const CardNotificationsImformation({
    Key? key,
    required this.notification,
  }) : super(key: key);

  final NotificationsModel notification;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          notification.name,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          notification.message.length >= 27
              ? '${notification.message.substring(0, 27)}...'
              : notification.message,
          style: GoogleFonts.poppins(fontSize: 12),
        ),
        Row(
          children: [
            Text(
              '\$',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Text(
              notification.price.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}