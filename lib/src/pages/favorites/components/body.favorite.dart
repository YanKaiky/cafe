import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/services/favorites.service.dart';
import 'package:cafe/src/pages/favorites/components/card.favorite/card.favorite.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyFavorite extends StatefulWidget {
  const BodyFavorite({super.key});

  @override
  State<BodyFavorite> createState() => _BodyFavoriteState();
}

class _BodyFavoriteState extends State<BodyFavorite> {
  @override
  Widget build(BuildContext context) {
    final List<CoffeesModel> favorites = FavoritesService.favorites;
    Size size = MediaQuery.of(context).size;

    return ListView.separated(
      padding: EdgeInsets.all(yDefaultPadding / 2),
      itemCount: favorites.length + 1,
      separatorBuilder: (context, _) => SizedBox(width: size.width / 12),
      itemBuilder: (context, i) {
        if (i == favorites.length) {
          return Padding(
            padding: const EdgeInsets.all(yDefaultPadding),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Buy now',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        {
          return CardFavorites(
            favorite: favorites[i],
            remove: () {
              setState(() {
                favorites.removeAt(i);
              });
            },
          );
        }
      },
    );
  }
}
