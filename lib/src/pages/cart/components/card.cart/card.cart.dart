import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/cart/components/card.cart/card.cart.image.dart';
import 'package:cafe/src/pages/cart/components/card.cart/card.cart.information.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CardCart extends StatelessWidget {
  const CardCart({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final CoffeesModel cart;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: size.height / 5.5,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(yDefaultPadding),
          child: Row(
            children: [
              CardCartImage(cart: cart),
              CardCartImformation(cart: cart),
            ],
          ),
        ),
      ),
    );
  }
}
