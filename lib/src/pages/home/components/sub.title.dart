import 'package:cafe/components/buttom.all.view.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    Key? key,
    required this.subtitle,
    required this.press,
  }) : super(key: key);

  final String subtitle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: yDefaultPadding + 5,
        bottom: yDefaultPadding,
        left: yDefaultPadding + 5,
      ),
      child: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subtitle,
                style: GoogleFonts.poppins(color: Colors.white60),
              ),
              Column(
                children: [
                  ButtonAllView(
                    size: 'M',
                    press: press,
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      color: Colors.white60,
                      fontSize: 8,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
