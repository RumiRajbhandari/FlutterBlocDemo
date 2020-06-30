import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/login/constants.dart';
import 'package:flutter_bloc_demo/login/login_text_field.dart';

import 'login/rounded_button.dart';

void main() => runApp(MaterialApp(
      home: LoginScreen(),
      theme:
          ThemeData(primaryColor: Colors.white, accentColor: Colors.blueAccent),
    ));

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: main_background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Please enter your credential to proceed.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              'PHONE NUMBER',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            LoginTextField(
                hintText: 'Enter phone number',
                validator: (String value) {},
                onSaved: (String value) {},
                isPassword: false,
                isUserName: true),
            SizedBox(
              height: 16,
            ),
            Text(
              'PIN',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            LoginTextField(
                hintText: 'Enter PIN',
                validator: (String value) {},
                onSaved: (String value) {},
                isPassword: true,
                isUserName: false),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,8,0,0),
              child: Text(
                'FORGOT PIN?',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: color_accent,
                  fontSize: 12
                ),
              ),
            ),
           RoundedButton(text: 'Sign In',onPress: (){

           }),
          ],
        ),
      )),
    );
  }
}

