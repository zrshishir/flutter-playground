import 'package:e_commerce_ui/model/Product.dart';
import 'package:e_commerce_ui/screen/detail/components/body.dart';
import 'package:e_commerce_ui/screen/detail/components/custome_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailArgument arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomeAppBar(arguments.product.rating),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailArgument {
  final Product product;

  ProductDetailArgument({@required this.product});
}
