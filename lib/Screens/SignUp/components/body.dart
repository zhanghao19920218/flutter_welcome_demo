import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_demo/Screens/Login/login_screen.dart';
import 'package:flutter_welcome_demo/Screens/SignUp/components/already_have_an_account.dart';
import 'package:flutter_welcome_demo/Screens/SignUp/components/backgroud.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/rounded_input_field.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/rounded_password_field.dart';
import 'package:flutter_welcome_demo/Screens/SignUp/components/or_divider.dart';
import 'package:flutter_welcome_demo/Screens/SignUp/components/social_icon.dart';
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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "请输入邮箱",
              iconData: Icons.person,
              onChanged: (str) {},
            ),
            RoundedPasswordField(
              onChanged: (str) {},
            ),
            RoundedButton(
              color: kPrimaryColor,
              textColor: Colors.white,
              text: 'SIGNUP',
              press: () {},
            ),
            AlreadyHaveAnAccount(onPress: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) {
                  return LoginScreen();
                }
              ));
            },),
            OrDivider(),
            Container(
              width: size.width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SocialIcon(assetUrl:"assets/icons/facebook.svg"),
                  ),
                  SocialIcon(assetUrl: "assets/icons/twitter.svg"),
                  Expanded(
                    child: SocialIcon(assetUrl:"assets/icons/google-plus.svg"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

