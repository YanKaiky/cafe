import 'package:cafe/src/pages/home/home.screen.dart';
import 'package:cafe/src/pages/login/login.screen.dart';
import 'package:cafe/src/pages/splash/splash.screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffy',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/browse': (context) => HomePage(),
      },
    );
  }
}
