import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/login/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;

  RoundedButton({this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: RaisedButton(
          color: color_accent,
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
          onPressed: onPress,
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
