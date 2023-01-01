import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(Icons.remove, () {
          if (numOfItems > 1) {
            setState(() {
              numOfItems--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(Icons.add, () {
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutlineButton(IconData icon, VoidCallback press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          side: BorderSide(color: Colors.orange, width: 1.0),
        ),
        onPressed: press,
        child: Icon(icon, color: Colors.orange),
      ),
    );
  }
}
