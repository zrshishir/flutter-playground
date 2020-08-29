import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

const red = Colors.red;
const green = Colors.green;
const blue = Colors.blue;
const big = const TextStyle(fontSize: 30);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

abstract class Example extends StatelessWidget {
  String get code;
  String get explanation;
}

class FlutterLayoutArticle extends StatefulWidget {
  final List<Example> examples;

  FlutterLayoutArticle(this.examples);
  @override
  _FlutterLayoutArticleState createState() => _FlutterLayoutArticleState();
}

class _FlutterLayoutArticleState extends State<FlutterLayoutArticle> {
  int count;
  Widget example;
  String code;
  String explanation;

  @override
  void initState() {
    count = 1;
    code = Example1().code;
    explanation = Example1().explanation;

    super.initState();
  }

  @override
  void didUpdateWidget(FlutterLayoutArticle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    var example = widget.examples[count - 1];
    code = example.code;
    explanation = example.explanation;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Article',
      home: SafeArea(
        child: Material(
          color: Colors.black,
          child: FittedBox(
            child: Container(
              width: 400,
              height: 670,
              color: Color(0xFFCCCCCC),
              child: Column(),
            ),
          ),
        ),
      ),
    );
  }
}
