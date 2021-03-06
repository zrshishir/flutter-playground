import 'package:flutter/material.dart';
import 'package:flutter_travel/screens/home/components/home_header.dart';
import 'package:flutter_travel/screens/home/components/popular_places.dart';
import 'package:flutter_travel/screens/home/components/top_traveler.dart';
import 'package:flutter_travel/size_config.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
          VerticalSpacing(),
          TopTraveler(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
