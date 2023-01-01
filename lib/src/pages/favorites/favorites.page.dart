import 'package:cafe/src/pages/favorites/components/body.favorite.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BodyFavorite(),
    );
  }
}
