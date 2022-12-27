import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchCoffeeHomeScreen extends StatelessWidget {
  const SearchCoffeeHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding + 5),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded),
          hintText: 'Find your coffee ☕ ...',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
