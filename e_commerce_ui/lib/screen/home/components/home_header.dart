import 'package:e_commerce_ui/screen/home/components/search_field.dart';
import 'package:e_commerce_ui/screen/home/components/notification_btn_with_container.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        children: [
          SearchField(),
          Spacer(),
          NotificationBtnWithContainer(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
          NotificationBtnWithContainer(
            svgSrc: "assets/icons/Bell.svg",
            numberOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
