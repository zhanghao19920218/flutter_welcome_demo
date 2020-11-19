import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_demo/Screens/Login/login_screen.dart';
import 'package:flutter_welcome_demo/Screens/SignUp/sign_up_screen.dart';
import 'package:flutter_welcome_demo/Screens/Welcome/components/backgound.dart';
import 'package:flutter_welcome_demo/Screens/Welcome/components/rounded_button.dart';
import 'package:flutter_welcome_demo/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: 'LOGIN',
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return LoginScreen();
                }
              ));
            },
          ),
          RoundedButton(
            text: 'SIGN UP',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return SignUpScreen();
                }
              ));
            },
          ),
        ],
      ),
    );
  }
}
