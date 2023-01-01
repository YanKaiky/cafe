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

    return Scaffold(
      appBar: AppBar(
        leadingWidth: size.width / 3,
        leading: Container(
          padding: EdgeInsets.all(12),
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(8),
              side: BorderSide(color: Colors.red, width: 1.0),
            ),
            icon: Icon(Icons.close_rounded, color: Colors.red, size: 18),
            label: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Center(
        child: Text(
          '\$${coffee.price.toStringAsFixed(2)}',
        ),
      ),
    );
  }
}
