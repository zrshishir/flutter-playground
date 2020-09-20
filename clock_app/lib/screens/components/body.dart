import 'package:clock_app/screens/components/clock.dart';
import 'package:clock_app/screens/components/time_in_hour_minute.dart';
import 'package:clock_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Clock(),
          Spacer(),
          SizedBox(
            width: getProportionateScreenWidth(233),
            child: AspectRatio(
              aspectRatio: 1.32,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).primaryIconTheme.color,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New york, USA",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: getProportionateScreenWidth(16),
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("+3 HRS | EST"),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Liberty.svg",
                          width: getProportionateScreenWidth(40),
                        ),
                        Spacer(),
                        Text(
                          "9:20",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text("AM"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
