import 'package:cafe/services/coffees.service.dart';
import 'package:cafe/src/pages/lists/components/coffee.card.list/coffee.card.list.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final coffees = CoffeesService.coffees;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: yDefaultPadding),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_rounded),
              ),
              SizedBox(width: 15),
              Text(
                'All',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(right: yDefaultPadding + 5),
            child: GridView.builder(
              itemCount: coffees.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: size.height / (size.height * 1.5),
              ),
              itemBuilder: (context, i) => CoffeeCardList(
                coffee: coffees[i],
              ),
            ),
          ),
        )
      ],
    );
  }
}
