import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    this.height,
    this.width,
    this.text,
    this.onTap,
  });

  final double height;
  final double width;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: height / 55),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.93),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(width / 25))),
        child: Text(
          text,
          style: TextStyle(fontSize: height / 21, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
