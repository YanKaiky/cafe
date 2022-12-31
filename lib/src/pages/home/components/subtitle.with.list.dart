import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/home/components/list.body.home.page.dart';
import 'package:cafe/src/pages/home/components/sub.title.dart';
import 'package:cafe/src/pages/lists/list.page.dart';
import 'package:flutter/material.dart';

class SubTitleWithList extends StatelessWidget {
  const SubTitleWithList({
    Key? key,
    required this.list,
    required this.title,
  }) : super(key: key);

  final String title;
  final List<CoffeesModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubTitle(
          visible: list.length > 3 ? true : false,
          subtitle: title,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListPage(
                  title: title,
                  coffees: list,
                ),
              ),
            );
          },
        ),
        ListBodyHomePage(title: title, coffees: list),
      ],
    );
  }
}
