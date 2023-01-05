import 'package:cafe/src/utils/constants.dart';
import 'package:cafe/src/utils/enums/status.enum.dart';
import 'package:flutter/material.dart';

class CardNotificationsStatus extends StatelessWidget {
  const CardNotificationsStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  final StatusEnum status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(yDefaultPadding),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.green,
          width: 2,
        ),
      ),
      child: Icon(
        Icons.delivery_dining_rounded,
        color: Colors.green,
        size: 30,
      ),
    );
  }
}
