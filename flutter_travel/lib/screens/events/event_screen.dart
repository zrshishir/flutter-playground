import 'package:flutter/material.dart';
import 'package:flutter_travel/components/app_bar.dart';
import 'package:flutter_travel/components/custom_nav_bar.dart';
import 'package:flutter_travel/screens/events/components/body.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "New Events"),
      body: Body(),
      bottomNavigationBar: CustomeNavBar(),
    );
  }
}
