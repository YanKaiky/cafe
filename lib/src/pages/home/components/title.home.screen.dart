import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHomeScreen extends StatelessWidget {
  const TitleHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: yDefaultPadding + 5),
      child: Text(
        'Find the best coffee for you ☕',
        style: GoogleFonts.bebasNeue(fontSize: 54),
      ),
    );
  }
}
