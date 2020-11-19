import 'package:flutter/material.dart';
import 'package:flutter_welcome_demo/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final Function onPress;


  const AlreadyHaveAnAccount({Key key, this.onPress}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an Account ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            "Sign in",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
