import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtonAllView extends StatelessWidget {
  const ButtonAllView({
    Key? key,
    required this.size,
    required this.press,
  }) : super(key: key);

  final VoidCallback press;
  final String size;

  @override
  Widget build(BuildContext context) {
    if (size == 'L') {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: yDefaultPadding * 4,
          left: yDefaultPadding + 5,
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 100,
          child: OutlinedButton(
            onPressed: press,
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
          ),
        ),
      );
    } else {
      return SizedBox(
        child: OutlinedButton(
          onPressed: press,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
          ),
          child: Icon(
            Icons.navigate_next_rounded,
          ),
        ),
      );
    }
  }
}
