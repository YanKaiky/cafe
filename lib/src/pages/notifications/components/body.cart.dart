import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/services/cart.service.dart';
import 'package:cafe/src/pages/cart/components/card.cart/card.cart.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyCart extends StatefulWidget {
  const BodyCart({super.key});

  @override
  State<BodyCart> createState() => _BodyCartState();
}

class _BodyCartState extends State<BodyCart> {
  @override
  Widget build(BuildContext context) {
    final List<CoffeesModel> cart = CartService.cart;
    Size size = MediaQuery.of(context).size;

    return ListView.separated(
      padding: EdgeInsets.all(yDefaultPadding / 2),
      itemCount: cart.length + 1,
      separatorBuilder: (context, _) => SizedBox(width: size.width / 12),
      itemBuilder: (context, i) {
        if (i == cart.length) {
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
          return CardCart(
            cart: cart[i],
            remove: () {
              setState(() {
                cart.removeAt(i);
              });
            },
          );
        }
      },
    );
  }
}
