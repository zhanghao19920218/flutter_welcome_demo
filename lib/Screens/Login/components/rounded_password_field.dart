import 'package:flutter/material.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/textfield_container.dart';
import 'package:flutter_welcome_demo/constants.dart';

class RoundedPasswordField extends StatelessWidget {

  final String hintText;
  final IconData iconData;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField(
      {Key key, this.hintText = "输入密码", this.iconData = Icons.lock, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        color: kPrimaryLightColor,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: hintText,
              icon: Icon(
                iconData,
                color: kPrimaryColor,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              border: InputBorder.none),
        ));
  }
}
