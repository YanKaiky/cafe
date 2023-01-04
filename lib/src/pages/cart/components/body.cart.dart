import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/services/cart.service.dart';
import 'package:cafe/src/pages/cart/components/card.cart/card.cart.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

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
      itemCount: cart.length,
      separatorBuilder: (context, _) => SizedBox(
        width: size.width / 12.5,
      ),
      itemBuilder: (context, i) {
        return Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.red,
            child: Icon(Icons.delete_rounded),
          ),
          onDismissed: (DismissDirection direction) {
            setState(() {
              cart.removeAt(i);
            });

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orange,
              content: Text('${cart[i].name} removed'),
              dismissDirection: DismissDirection.down,
            ));
          },
          child: CardCart(cart: cart[i]),
        );
      },
    );
  }
}
