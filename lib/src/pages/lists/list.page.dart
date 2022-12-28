import 'package:cafe/components/app.menu.drawer.dart';
import 'package:cafe/src/pages/lists/components/body.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

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
      body: Body(),
    );
  }
}
