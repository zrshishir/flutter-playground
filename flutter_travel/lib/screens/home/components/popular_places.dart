import 'package:flutter/material.dart';
import 'package:flutter_travel/components/section_title.dart';
import 'package:flutter_travel/constants.dart';
import 'package:flutter_travel/models/TravelSpot.dart';
import 'package:flutter_travel/size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        PlaceCard(
          travelSpot: travelSpots[2],
          press: () {},
        ),
      ],
    );
  }
}

class PlaceCard extends StatelessWidget {
  final TravelSpot travelSpot;
  final GestureTapCallback press;
  const PlaceCard({
    Key key,
    @required this.travelSpot,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    travelSpot.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [kDefualtShadow],
            ),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(
                  of: 10,
                ),
                Travelers(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(28),
      child: Stack(
        children: [
          ...List.generate(travelSpots[0].users.length, (index) {
            totalUser++;
            return Positioned(
              left: (20 * index).toDouble(),
              child: buildTravelerFace(index),
            );
          }),
          Positioned(
            left: (20 * totalUser).toDouble(),
            child: SizedBox(
              width: getProportionateScreenWidth(25),
              height: getProportionateScreenWidth(25),
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {},
                color: kPrimaryColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(
        travelSpots[0].users[index].image,
        height: getProportionateScreenHeight(25),
        width: getProportionateScreenWidth(25),
        fit: BoxFit.cover,
      ),
    );
  }
}
