import 'package:cafe/src/pages/home/home.screen.dart';
import 'package:cafe/src/pages/login/login.screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/browse': (context) => HomePage(),
      },
    );
  }
}
