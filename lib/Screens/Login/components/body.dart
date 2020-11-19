import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/already_have_an_account.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/background.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/rounded_input_field.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/rounded_password_field.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/textfield_container.dart';
import 'package:flutter_welcome_demo/Screens/Welcome/components/rounded_button.dart';
import 'package:flutter_welcome_demo/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          RoundedInputField(
            hintText: "输入邮箱",
            iconData: Icons.person,
            onChanged: (str) {},
          ),
          RoundedPasswordField(
            onChanged: (str) {},
          ),
          RoundedButton(
            color: kPrimaryColor,
            textColor: Colors.white,
            text: 'LOGIN',
            press: () {},
          ),
          AlreadyHaveAnAccount(
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
