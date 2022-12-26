import 'package:flutter/material.dart';

class BottomHomeNavigatonBar extends StatelessWidget {
  const BottomHomeNavigatonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
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
