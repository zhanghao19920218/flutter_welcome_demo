import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const TextFieldContainer(
      {Key key, @required this.color, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
