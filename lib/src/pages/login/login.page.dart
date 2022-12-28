import 'package:flutter/material.dart';
import 'package:cafe/src/pages/login/components/customshape.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:cafe/src/utils/user.secure.storage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? _initialEmail;
  TextEditingController? _initialPassword;

  String email = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final mail = await UserSecureStorage.getEmail() ?? '';
    final pass = await UserSecureStorage.getPassword() ?? '';

    _initialEmail = TextEditingController(text: mail);
    _initialPassword = TextEditingController(text: pass);

    setState(() {
      email = mail;
      password = pass;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: _body(size, context),
    );
  }

  SafeArea _body(Size size, BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipPath(
                    clipper: Customshape(),
                    child: SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/coffees.jpg',
                              fit: BoxFit.cover,
                              width: size.width,
                            ),
                          ),
                          Container(
                            height: size.height / 2,
                            color: Colors.black.withOpacity(0.7),
                            child: Center(
                              child: Image.asset(
                                'assets/images/coffy-shop-without-background.png',
                                width: 200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Sign In to continue',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      onChanged: (value) => email = value,
                      controller: _initialEmail,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        labelText: 'Email',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      onChanged: (value) => password = value,
                      controller: _initialPassword,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      onSubmitted: (value) async {
                        await UserSecureStorage.setEmail(email);
                        await UserSecureStorage.setPassword(password);

                        if (email == 'yankaikys@gmail.com' &&
                            password == '123') {
                          Navigator.of(context).pushReplacementNamed('/browse');
                        } else {
                          print('Invalid login');
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key_rounded),
                        labelText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildLoginButton(context, size),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('New User?'),
                      SizedBox(width: 5),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildLoginButton(BuildContext context, Size size) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: yDefaultPadding, horizontal: 16.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        onPressed: () async {
          await UserSecureStorage.setEmail(email);
          await UserSecureStorage.setPassword(password);

          if (email == 'yankaikys@gmail.com' && password == '123') {
            Navigator.of(context).pushReplacementNamed('/browse');
          } else {
            print('Invalid login');
          }
        },
        child: SizedBox(
          width: size.width,
          height: 50,
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
