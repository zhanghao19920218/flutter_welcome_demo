import 'package:flutter/material.dart';
import 'package:flutter_welcome_demo/Screens/SignUp/components/body.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body()
    );
  }
}
