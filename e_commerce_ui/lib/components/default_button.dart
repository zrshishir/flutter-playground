import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: press,
        color: kPrimaryColor,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
    );
  }
}
