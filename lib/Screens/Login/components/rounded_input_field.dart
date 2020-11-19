import 'package:flutter/material.dart';
import 'package:flutter_welcome_demo/Screens/Login/components/textfield_container.dart';
import 'package:flutter_welcome_demo/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final ValueChanged<String> onChanged;

  const RoundedInputField(
      {Key key, this.hintText, this.iconData, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      color: kPrimaryLightColor,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              iconData,
              color: kPrimaryColor,
            ),
            hintText: '您的邮箱',
            border: InputBorder.none),
      ),
    );
  }
}
