import 'package:call_app/size_config.dart';
import 'package:flutter/material.dart';

class DialUser extends StatelessWidget {
  const DialUser({
    Key key,
    this.size = 192,
    @required this.image,
  }) : super(key: key);

  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(size),
      width: getProportionateScreenWidth(size),
      padding: EdgeInsets.all(20 / 192 * size),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.white.withOpacity(0.02),
            Colors.white.withOpacity(0.05)
          ],
          stops: [0.5, 1],
        ),
      ),
      child: Image.asset("assets/images/calling_face.png"),
    );
  }
}
