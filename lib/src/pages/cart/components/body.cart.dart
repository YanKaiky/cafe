import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/services/cart.service.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyCart extends StatelessWidget {
  const BodyCart({super.key});

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
        return Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          height: size.height / 6,
          width: double.maxFinite,
          child: Card(
            color: Colors.brown,
            child: Text(cart[i].name),
          ),
        );
      },
    );
  }
}
