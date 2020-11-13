import 'package:call_app/constants.dart';
import 'package:call_app/screens/dialScreen/components/body.dart';
import 'package:call_app/size_config.dart';
import 'package:flutter/material.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
