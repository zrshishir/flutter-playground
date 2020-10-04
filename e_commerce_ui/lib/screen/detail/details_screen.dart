import 'package:e_commerce_ui/model/Product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            color: Colors.white,
            onPressed: () {},
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
    );
  }
}

class ProductDetailArgument {
  final Product product;

  ProductDetailArgument({@required this.product});
}
