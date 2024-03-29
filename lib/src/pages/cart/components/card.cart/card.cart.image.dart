import 'package:cached_network_image/cached_network_image.dart';
import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CardCartImage extends StatelessWidget {
  const CardCartImage({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final CoffeesModel cart;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: yDefaultPadding),
              width: size.width / 3.5,
              height: size.height / 9,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  key: UniqueKey(),
                  cacheKey: cart.guid,
                  imageUrl: cart.image,
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
            )
          ],
        )
      ],
    );
  }
}
