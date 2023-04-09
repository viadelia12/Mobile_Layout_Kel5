import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 350,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/beam-remote-work-from-home.png',
                      height: 400,
                    ),
                  ),
                ],
              ),
            ),
            _usernameField(),
            SizedBox(height: 20),
            _passwordField(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "Sorry, we're working on getting this fixed ASAP"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Color(0xff645CAA),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                if (usernameController.text == "user") {
                  if (passwordController.text == "user") {
                    Navigator.popAndPushNamed(context, '/navbar');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Wrong password!"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Wrong username/password!"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              height: 45,
              color: Color(0xff645CAA),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Color(0xffBFACE0),
                    fontSize: 14.0,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "Sorry, we're working on getting this fixed ASAP"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Color(0xffA084CA),
                      fontSize: 14.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return TextField(
      controller: usernameController,
      cursorColor: Color(0xff645CAA),
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'username',
        labelStyle: TextStyle(
          color: Color(0xff645CAA),
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: TextStyle(
          color: Color(0xffBFACE0),
          fontSize: 14.0,
        ),
        prefixIcon: Icon(
          Iconsax.user,
          color: Color(0xff645CAA),
          size: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffBFACE0), width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: TextStyle(
          color: Color(0xffBFACE0),
          fontSize: 18.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffBFACE0), width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return TextField(
      obscureText: true,
      controller: passwordController,
      cursorColor: Color(0xff645CAA),
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'password',
        labelStyle: TextStyle(
          color: Color(0xff645CAA),
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: TextStyle(
          color: Color(0xffBFACE0),
          fontSize: 14.0,
        ),
        prefixIcon: Icon(
          Iconsax.lock,
          color: Color(0xff645CAA),
          size: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffBFACE0), width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: TextStyle(
          color: Color(0xffBFACE0),
          fontSize: 18.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffBFACE0), width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
