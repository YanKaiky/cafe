import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String type;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeType({
    Key? key,
    required this.type,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: yDefaultPadding + 5),
        child: Text(
          type,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.grey,
          ),
        ),
      ),
    );
  }
}
