import 'package:flutter/material.dart';
import 'package:flutter_welcome_demo/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final Function onPressed;

  const AlreadyHaveAnAccount({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an Account ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            "Sign Up",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
