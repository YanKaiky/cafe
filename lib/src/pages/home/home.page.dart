import 'package:cafe/components/app.menu.drawer.dart';
import 'package:cafe/src/pages/home/components/body.home.page.dart';
import 'package:cafe/components/bottom.navigaton.bar.dart';
import 'package:cafe/src/pages/profile/profile.page.dart';
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
      drawer: AppMenuDrawer(),
      appBar: _buildAppBar(),
      body: BodyHomePage(),
      bottomNavigationBar: AppBottomNavigatonBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: yDefaultPadding / 2),
          child: IconButton(
            icon: Icon(Icons.person_rounded),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
