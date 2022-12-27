import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final CoffeesModel coffee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
      child: Text(
        coffee.description,
        style: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
