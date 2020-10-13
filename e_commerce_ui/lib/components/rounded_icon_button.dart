import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconData;
  final GestureDragCancelCallback press;

  const RoundedIconButton({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        padding: EdgeInsets.zero,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
