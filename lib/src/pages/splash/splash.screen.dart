import 'package:cafe/src/utils/user.secure.storage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final email = await UserSecureStorage.getEmail();
    final password = await UserSecureStorage.getPassword();

    if (email == 'yankaikys@gmail.com' && password == '123') {
      Navigator.of(context).pushReplacementNamed('/browse');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF823200),
      body: Center(
        child: Image.asset(
          'assets/images/coffy-shop-without-background.png',
          width: 125,
        ),
      ),
    );
  }
}
