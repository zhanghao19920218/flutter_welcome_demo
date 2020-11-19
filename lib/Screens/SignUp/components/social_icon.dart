import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_demo/constants.dart';


class SocialIcon extends StatelessWidget {
  final String assetUrl;
  final Function onPress;

  const SocialIcon({Key key, this.assetUrl, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kPrimaryLightColor,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          assetUrl,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
