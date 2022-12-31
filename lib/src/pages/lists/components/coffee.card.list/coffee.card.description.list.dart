import 'package:cached_network_image/cached_network_image.dart';
import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/lists/components/coffee.card.list/coffee.card.counter.list.dart';
import 'package:flutter/material.dart';

class CoffeCardDescriptionList extends StatelessWidget {
  final CoffeesModel coffee;

  const CoffeCardDescriptionList({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height / 6,
          width: size.width * 2,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              key: UniqueKey(),
              cacheKey: coffee.guid,
              imageUrl: coffee.image,
              maxHeightDiskCache: 1000,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Center(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                ),
              ),
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
                coffee.name.length >= 15
                    ? '${coffee.name.substring(0, 15)}...'
                    : coffee.name,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                coffee.description.length >= 14
                    ? '${coffee.description.substring(0, 14)}...'
                    : coffee.description,
                style: TextStyle(fontSize: 12, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        Spacer(),
        CoffeeCardCounterList(coffee: coffee),
        Spacer(),
      ],
    );
  }
}
