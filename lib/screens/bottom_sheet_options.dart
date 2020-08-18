import 'package:flutter/material.dart';
import 'package:onboarding_restaurant/cons.dart';
import 'package:onboarding_restaurant/screens/login.dart';
import 'package:onboarding_restaurant/screens/signup.dart';
import 'package:onboarding_restaurant/blocks/rounded_button.dart';

class BottomSheetOptions extends StatefulWidget {
  static String id = 'bottom_sheet';
  @override
  _BottomSheetOptionsState createState() => _BottomSheetOptionsState();
}

class _BottomSheetOptionsState extends State<BottomSheetOptions> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              width: width * 0.35,
              height: height * 0.2,
            ),
            SizedBox(
              height: height / 50,
            ),
            Container(
              width: height / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RoundedButton(
                      height: height,
                      width: width,
                      text: 'Login',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }),
                  SizedBox(
                    height: height / 50,
                  ),
                  RoundedButton(
                      height: height,
                      width: width,
                      text: 'Sign Up',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
