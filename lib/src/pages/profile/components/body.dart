import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 25, right: 16, left: 16),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
          children: [
            Text(
              'Edit Profile',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.green),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('https://www.github.com/YanKaiky.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: Colors.white),
                        color: Colors.green,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.edit, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Divider(),
            SizedBox(height: 25),
            yTextField(
              'Full name',
              false,
              null,
              'Yan Kaiky',
            ),
            yTextField(
              'Email',
              false,
              TextInputType.emailAddress,
              'yankaikys@gmail.com',
            ),
            yTextField(
              'Password',
              true,
              null,
              '123',
            ),
            yTextField(
              'Location',
              false,
              null,
              'SC, Brazil',
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                    side: BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: size.width / 3,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding yTextField(
    String label,
    bool obscureText,
    TextInputType? keyboardType,
    String hintText,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: TextField(
        obscureText: obscureText ? showPassword : showPassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: obscureText
              ? IconButton(
                  icon: Icon(
                    showPassword
                        ? Icons.remove_red_eye_rounded
                        : Icons.remove_red_eye_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                )
              : null,
          labelText: label,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
