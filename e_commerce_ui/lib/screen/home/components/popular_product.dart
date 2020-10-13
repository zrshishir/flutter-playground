import 'package:e_commerce_ui/model/Product.dart';
import 'package:e_commerce_ui/screen/detail/details_screen.dart';
import 'package:e_commerce_ui/screen/home/components/product_card.dart';
import 'package:e_commerce_ui/screen/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments:
                        ProductDetailArgument(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
