import 'package:cafe/models/coffees.model.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  final CoffeesModel coffee;

  const BuyPage({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AlertDialog(
      title: Text("Buy now"),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 20,
      ),
      actionsOverflowButtonSpacing: 15,
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Back"),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Next")),
      ],
      content: Text('\$${coffee.price.toStringAsFixed(2)}'),
    );
  }
}
