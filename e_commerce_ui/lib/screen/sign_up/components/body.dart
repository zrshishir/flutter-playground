import 'package:e_commerce_ui/components/social_card.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screen/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or conitnue \nwith your social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              SignUpForm(),
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
