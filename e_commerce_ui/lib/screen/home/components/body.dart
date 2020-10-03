import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screen/home/components/categories.dart';
import 'package:e_commerce_ui/screen/home/components/discount_banner.dart';
import 'package:e_commerce_ui/screen/home/components/home_header.dart';
import 'package:e_commerce_ui/screen/home/components/section_title.dart';
import 'package:e_commerce_ui/screen/home/components/special_offer.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            SpecialOffer(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SectionTitle(
              text: "Popular Product",
              press: () {},
            ),
            Column(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(140),
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
