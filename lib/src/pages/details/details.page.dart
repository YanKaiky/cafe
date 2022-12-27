import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/details/components/description.dart';
import 'package:cafe/src/pages/details/components/stack.image.with.name.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final CoffeesModel coffee;

  const DetailsPage({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StackImageWithName(size: size, coffee: coffee),
          _subTitle('Description'),
          Description(coffee: coffee),
          _subTitle('Size'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: yDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buttonSize('S', false, size),
                _buttonSize('M', true, size),
                _buttonSize('L', false, size),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(yDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.poppins(
                        color: Colors.orange,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      coffee.price.toStringAsFixed(2),
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width / 4,
                      vertical: 20,
                    ),
                    side: BorderSide(color: Colors.orange),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'Buy now',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OutlinedButton _buttonSize(String label, bool isSelected, Size size) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: size.width / 9),
        side: isSelected ? BorderSide(color: Colors.orange) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(color: !isSelected ? Colors.white60 : null),
      ),
    );
  }

  Padding _subTitle(String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(yDefaultPadding),
      child: Text(
        subtitle,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.white60,
        ),
      ),
    );
  }
}
