import 'package:cafe/models/coffees.model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardFavoriteImformation extends StatelessWidget {
  const CardFavoriteImformation({
    Key? key,
    required this.favorite,
  }) : super(key: key);

  final CoffeesModel favorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          favorite.name,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          favorite.description.length >= 27
              ? '${favorite.description.substring(0, 27)}...'
              : favorite.description,
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
              favorite.price.toStringAsFixed(2),
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
