import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/home/components/coffee.card/coffee.card.counter.dart';
import 'package:flutter/material.dart';

class CoffeCardDescription extends StatelessWidget {
  final CoffeesModel coffee;

  const CoffeCardDescription({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(coffee.image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coffee.name.length >= 14
                    ? '${coffee.name.substring(0, 14)}...'
                    : coffee.name,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                coffee.description.length >= 22
                    ? '${coffee.description.substring(0, 22)}...'
                    : coffee.description,
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        CoffeeCardCounter(coffee: coffee),
      ],
    );
  }
}
