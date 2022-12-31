import 'package:cafe/components/app.menu.drawer.dart';
import 'package:cafe/src/pages/lists/components/body.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String title;
  final List coffees;

  const ListPage({
    super.key,
    required this.title,
    required this.coffees,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppMenuDrawer(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(
        title: title,
        coffees: coffees,
      ),
    );
  }
}
