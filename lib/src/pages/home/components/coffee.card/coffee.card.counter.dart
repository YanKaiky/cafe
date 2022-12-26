import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CoffeeCardCounter extends StatelessWidget {
  final CoffeesModel coffee;

  const CoffeeCardCounter({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: yDefaultPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$${coffee.price}'),
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(6),
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
