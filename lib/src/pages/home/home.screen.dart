import 'package:cafe/src/pages/home/components/body.home.screen.dart';
import 'package:cafe/src/pages/home/components/bottom.home.navigaton.bar.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: _buildAppBar(),
      body: BodyHomeScreen(),
      bottomNavigationBar: BottomHomeNavigatonBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.menu_rounded),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: yDefaultPadding / 2),
          child: IconButton(
            icon: Icon(Icons.person_rounded),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
