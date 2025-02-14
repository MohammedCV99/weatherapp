import 'package:flutter/material.dart';

Widget SignUp_Button(BuildContext context, String Password, String Re_Password,
    Function FUN, String input) {
  return Expanded(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        if (Password == Re_Password) {
                          FUN();
                        }
                      },
                      child: Text(input))))));
}

Widget SignIn_Button(
    BuildContext context, String Password, Function FUN, String input) {
  return Expanded(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        FUN();
                      },
                      child: Text(input))))));
}
