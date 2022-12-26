import 'package:cafe/src/pages/home/home.screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
