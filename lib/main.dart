import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:onboarding_restaurant/screens/home_screen.dart';
import 'cons.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/start_screen.dart';
import 'package:onboarding_restaurant/screens/bottom_sheet_options.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: mainColor, scaffoldBackgroundColor: Colors.grey[100]),
      initialRoute: StartPage.id,
      routes: {
        StartPage.id: (context) => StartPage(),
        BottomSheetOptions.id: (context) => BottomSheetOptions(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
