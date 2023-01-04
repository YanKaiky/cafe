import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/category.validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCartImformation extends StatelessWidget {
  const CardCartImformation({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final CoffeesModel cart;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cart.name,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          cart.description.length >= 27
              ? '${cart.description.substring(0, 27)}...'
              : cart.description,
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
              cart.price.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          categoryValidation(cart.category),
          style: GoogleFonts.poppins(
            fontSize: 6,
            color: Colors.white24,
          ),
        ),
      ],
    );
  }
}
