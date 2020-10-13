import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/model/Product.dart';
import 'package:e_commerce_ui/screen/detail/components/color_dots.dart';
import 'package:e_commerce_ui/screen/detail/components/product_description.dart';
import 'package:e_commerce_ui/screen/detail/components/product_images.dart';
import 'package:e_commerce_ui/screen/detail/components/top_rounded_container.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenHeight * 0.15,
                            right: SizeConfig.screenHeight * 0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
