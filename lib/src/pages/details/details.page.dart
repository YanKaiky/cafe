import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/buy/buy.page.dart';
import 'package:cafe/src/pages/details/components/cart.counter.dart';
import 'package:cafe/src/pages/details/components/description.dart';
import 'package:cafe/src/pages/details/components/stack.image.with.name.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final CoffeesModel coffee;

  const DetailsPage({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final List buttonsSize = [
    ['S', false],
    ['M', true],
    ['L', false],
  ];

  void onTapped(int index) {
    setState(() {
      for (var i = 0; i < buttonsSize.length; i++) {
        buttonsSize[i][1] = false;
      }

      buttonsSize[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StackImageWithName(size: size, coffee: widget.coffee),
          subTitleWithCounter(),
          Description(coffee: widget.coffee),
          _subTitle('Size'),
          Container(
            height: size.height / 22,
            padding: EdgeInsets.symmetric(horizontal: yDefaultPadding),
            child: ListView.separated(
              padding: EdgeInsets.only(right: yDefaultPadding + 5),
              scrollDirection: Axis.horizontal,
              itemCount: buttonsSize.length,
              separatorBuilder: (context, _) => SizedBox(
                width: size.width / 12.5,
              ),
              itemBuilder: (context, i) {
                return _buttonSize(
                  i,
                  buttonsSize[i][0],
                  buttonsSize[i][1],
                  size,
                );
              },
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
                      widget.coffee.price.toStringAsFixed(2),
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width / 6,
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
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuyPage(
                        coffee: widget.coffee,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row subTitleWithCounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _subTitle('Description'),
        Padding(
          padding: const EdgeInsets.only(right: yDefaultPadding),
          child: CartCounter(),
        ),
      ],
    );
  }

  OutlinedButton _buttonSize(int i, String label, bool isSelected, Size size) {
    return OutlinedButton(
      onPressed: () => onTapped(i),
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
