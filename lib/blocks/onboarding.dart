import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({this.image, this.subtitle, this.title});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            image,
            height: height * 0.43,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: height * 0.06,
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              subtitle,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height * 0.025,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
