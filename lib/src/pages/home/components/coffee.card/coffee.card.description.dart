import 'package:cached_network_image/cached_network_image.dart';
import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/home/components/coffee.card/coffee.card.information.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeCardDescription extends StatelessWidget {
  final CoffeesModel coffee;

  const CoffeCardDescription({
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
          height: size.height / 4,
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
        Spacer(),
        CoffeeCardInformation(coffee: coffee),
        Spacer(),
        _ratings(),
      ],
    );
  }

  Padding _ratings() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: yDefaultPadding / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.yellow[700],
                size: 12,
              ),
              Icon(
                Icons.star_rounded,
                color: Colors.yellow[700],
                size: 12,
              ),
              Icon(
                Icons.star_rounded,
                color: Colors.yellow[700],
                size: 12,
              ),
              Icon(
                Icons.star_rounded,
                color: Colors.yellow[700],
                size: 12,
              ),
              Icon(
                Icons.star_rounded,
                color: Colors.grey[800],
                size: 12,
              ),
            ],
          ),
          SizedBox(width: 10),
          Text(
            '4/5',
            style: GoogleFonts.poppins(
              color: Colors.white24,
              fontSize: 8,
            ),
          ),
          SizedBox(width: 10),
          Text(
            '(6.986) ratings',
            style: GoogleFonts.poppins(
              color: Colors.white24,
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}
