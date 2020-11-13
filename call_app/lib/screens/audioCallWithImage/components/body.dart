import 'package:call_app/constants.dart';
import 'package:call_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        //set image
        Image.asset(
          'assets/images/full_image.png',
          fit: BoxFit.cover,
        ),
        //adding opacity
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        //adding text upon on the image
        Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jemmy \nWilliams",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
                VerticalSpacing(
                  of: 10,
                ),
                Text(
                  "Incoming 00:01".toUpperCase(),
                  style: TextStyle(color: Colors.white60),
                ),
                Spacer(),
                SizedBox(
                  height: getProportionateScreenWidth(64),
                  width: getProportionateScreenWidth(64),
                  child: FlatButton(
                    color: kRedColor,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onPressed: () {},
                    child: SvgPicture.asset("assets/icons/call_end.svg"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
