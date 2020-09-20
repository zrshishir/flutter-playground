import 'package:flutter/material.dart';
import 'package:layout/button_section.dart';
import 'package:layout/text_section.dart';
import 'package:layout/title_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Layout Demo"),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/lake.jpeg",
              width: 600,
              height: 150,
              fit: BoxFit.cover,
            ),
            TitleSection(),
            ButtonSection(),
            TextSection(),
          ],
        ),
      ),
    );
  }
}
