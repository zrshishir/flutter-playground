import 'package:flutter/material.dart';
import 'package:flutter_travel/components/app_bar.dart';
import 'package:flutter_travel/components/custom_nav_bar.dart';
import 'package:flutter_travel/screens/home/components/body.dart';
import 'package:flutter_travel/size_config.dart';
import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true, title: ""),
      body: Body(),
      bottomNavigationBar: CustomeNavBar(),
    );
  }
}
