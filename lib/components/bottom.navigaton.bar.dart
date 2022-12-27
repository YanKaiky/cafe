import 'package:flutter/material.dart';

class AppBottomNavigatonBar extends StatelessWidget {
  const AppBottomNavigatonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.orange,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_rounded),
          label: '',
        ),
      ],
    );
  }
}
