import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackImageWithName extends StatelessWidget {
  const StackImageWithName({
    Key? key,
    required this.size,
    required this.coffee,
  }) : super(key: key);

  final Size size;
  final CoffeesModel coffee;

  @override
  Widget build(BuildContext context) {
    bool favorite = false;

    return Stack(
      children: [
        Container(
          height: size.height / 1.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(coffee.image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: yDefaultPadding * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: yDefaultPadding),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: yDefaultPadding),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: IconButton(
                  icon: favorite == true
                      ? Icon(Icons.favorite_rounded, color: Colors.red)
                      : Icon(Icons.favorite_outline_rounded),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(yDefaultPadding),
            height: size.height / 5.5,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffee.name,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star_rounded, color: Colors.yellow[700]),
                    SizedBox(width: 10),
                    Text('4/5'),
                    SizedBox(width: 10),
                    Text('(6.986) ratings'),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
