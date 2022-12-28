import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtonAllView extends StatelessWidget {
  const ButtonAllView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(
          EdgeInsets.all(20),
        ), // <-- Button color
      ),
      child: Icon(
        Icons.navigate_next_rounded,
        size: yDefaultPadding * 2,
      ),
    );
  }
}
