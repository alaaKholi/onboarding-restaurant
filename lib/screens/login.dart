import 'package:flutter/material.dart';
import 'package:onboarding_restaurant/cons.dart';
import 'package:onboarding_restaurant/screens/home_screen.dart';
import 'package:onboarding_restaurant/screens/signup.dart';
import 'package:onboarding_restaurant/blocks/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //width: double.infinity,
        alignment: Alignment.center,
        color: mainColor,
        //     padding: EdgeInsets.symmetric(horizontal: size.width / 10),
        child: ListView(
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Image.asset(
                    'images/logo.png',
                    width: size.width * 0.45,
                    height: size.height * 0.3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: size.height / 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 3.0,
                          blurRadius: 7,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: mainColor,
                      style: TextStyle(
                        color: mainColor,
                        fontSize: size.height / 30,
                      ),
                      decoration: InputDecoration(
                        focusColor: mainColor,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person, size: size.width * 0.07),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    width: size.width * 0.85,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 3.0,
                          blurRadius: 7, // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      cursorColor: mainColor,
                      style: TextStyle(
                        color: mainColor,
                        fontSize: size.height / 30,
                      ),
                      decoration: InputDecoration(
                        focusColor: mainColor,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          size: size.width * 0.07,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    width: size.width * 0.85,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.width * 0.85,
                    child: RoundedButton(
                      height: size.height * 0.85,
                      width: size.width,
                      text: 'Login',
                      onTap: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUpScreen.id);
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Dont have an account ? ',
                          style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w400,
                              color: Colors.white.withOpacity(0.9))),
                      TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white))
                    ])),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
