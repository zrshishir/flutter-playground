import 'package:call_app/components/dial_user_pic.dart';
import 'package:call_app/components/rounded_button.dart';
import 'package:call_app/screens/dialScreen/components/dial_button.dart';
import 'package:call_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna Williams",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Text(
              "Calling...",
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DialUser(
              image: "assets/images/calling_face.png",
            ),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Mic.svg",
                  text: "Audio",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Volume.svg",
                  text: "Microphone",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Video.svg",
                  text: "Video",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Message.svg",
                  text: "Message",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon User.svg",
                  text: "Add Contact",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  text: "Voice mail",
                ),
              ],
            ),
            VerticalSpacing(),
            RoundedButton(
              press: () {},
              color: kRedColor,
              iconColor: Colors.white,
              iconSrc: "assets/icons/call_end.svg",
            ),
          ],
        ),
      ),
    );
  }
}
