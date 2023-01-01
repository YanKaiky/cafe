// ignore_for_file: use_build_context_synchronously

import 'package:cafe/services/coffees.drink.service.dart';
import 'package:cafe/services/coffees.food.service.dart';
import 'package:cafe/services/coffees.drink.at.home.service.dart';
import 'package:cafe/services/coffees.food.at.home.service.dart';
import 'package:cafe/src/pages/home/home.page.dart';
import 'package:cafe/src/pages/lists/list.page.dart';
import 'package:cafe/src/pages/login/login.page.dart';
import 'package:cafe/src/pages/profile/profile.page.dart';
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
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                'https://www.einerd.com.br/wp-content/uploads/2019/05/Miles-Morales-capa.png',
              ),
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
            leading: const Icon(Icons.coffee_rounded),
            title: const Text('Home'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.local_drink_rounded),
            title: const Text('Drinks'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListPage(
                  title: 'Drinks',
                  coffees: CoffeesDrinkService.coffees,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.local_dining_rounded),
            title: const Text('Food'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListPage(
                  title: 'Food',
                  coffees: CoffeesFoodService.foods,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.brunch_dining_outlined),
            title: const Text('Drinks at home'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListPage(
                  title: 'Drinks at home',
                  coffees: CoffeesDrinkAtHomeService.drinkAtHome,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.food_bank_rounded),
            title: const Text('Food at home'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListPage(
                  title: 'Food at home',
                  coffees: CoffeesFoodAtHomeService.foodAtHome,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('Profile'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
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
