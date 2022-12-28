import 'package:cafe/src/pages/home/home.page.dart';
import 'package:cafe/src/pages/login/login.page.dart';
import 'package:cafe/src/utils/user.secure.storage.dart';
import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.grey[900]),
            currentAccountPicture: Image.network(
              'https://www.github.com/YanKaiky.png',
            ),
            accountName: const Text('Yan Kaiky'),
            accountEmail: const Text('yankaikys@gmail.com'),
            otherAccountsPictures: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_rounded),
            title: const Text('Home'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
          ),
          Spacer(),
          Divider(),
          Center(
            child: OutlinedButton(
              onPressed: () async {
                await UserSecureStorage.clearEmail();
                await UserSecureStorage.clearPassword();

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.logout_rounded),
                  SizedBox(width: 10),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
