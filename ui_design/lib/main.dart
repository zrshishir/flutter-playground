import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  TextStyle makingDefaultStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    fontFamily: "Goergia",
  );

  Widget normalText = Container(
    margin: EdgeInsets.all(10),
    child: Text(
      'normal text',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        fontFamily: "Goergia",
      ),
    ),
    width: 375,
    height: 240,
    color: Colors.grey[300],
  );

  Widget boxDecoration = Container(
    margin: EdgeInsets.all(10),
    child: Text(
      'box decoration',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        fontFamily: "Goergia",
      ),
    ),
    width: 375,
    height: 240,
    decoration: BoxDecoration(
      color: Colors.grey[300],
    ),
  );

  Widget containerWidth = Container(
    margin: EdgeInsets.all(10),
    child: Center(
      child: Container(
        child: Text(
          "container width",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            fontFamily: "Goergia",
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        padding: EdgeInsets.all(16),
        width: 240,
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
  );

  Widget absolutePosition = Container(
    child: Stack(
      children: [
        Positioned(
          child: Container(
              child: Text(
                'absolute position',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Goergia",
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red[400],
              ),
              padding: EdgeInsets.all(16)),
          left: 24,
          top: 24,
        ),
      ],
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget rotatingComponent = Container(
    child: Center(
      child: Transform(
        child: Container(
          child: Text(
            'rotating component',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              fontFamily: "Goergia",
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
          padding: EdgeInsets.all(16),
        ),
        alignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(30 * 3.1416 / 180),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget scalingComponent = Container(
    child: Center(
      child: Transform(
        child: Container(
          child: Text(
            'scaling component',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              fontFamily: "Goergia",
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
          padding: EdgeInsets.all(16),
        ),
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(1.0),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget verticalGradient = Container(
    // grey box
    child: Center(
      child: Container(
        // red box
        child: Text(
          "vertical gradient",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            fontFamily: "Goergia",
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-1.0, 0.0),
            end: const Alignment(0.6, 0.0),
            colors: <Color>[const Color(0xffef5350), const Color(0x00ef5350)],
          ),
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget horizontalGradient = Container(
    // grey box
    child: Center(
      child: Container(
        // red box
        child: Text(
          "horizontal gradient",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            fontFamily: "Goergia",
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.0, -1.0),
            end: const Alignment(0.0, 0.6),
            colors: <Color>[const Color(0xffef5350), const Color(0x00ef5350)],
          ),
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget boxShadows = Container(
    // grey box
    child: Center(
      child: Container(
        // red box
        child: Text(
          "box shadows",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            fontFamily: "Goergia",
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.red[400],
          boxShadow: [
            BoxShadow(
              color: const Color(0xcc000000),
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
            BoxShadow(
              color: const Color(0x80000000),
              offset: Offset(0, 6),
              blurRadius: 20,
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 240,
    decoration: BoxDecoration(
      color: Colors.grey[300],
    ),
    margin: EdgeInsets.all(10),
  );

  Widget letterSpacing = Container(
    // grey box
    child: Center(
      child: Container(
        // red box
        child: Text(
          "letter spacing",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w900,
            letterSpacing: 4,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.red[400],
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget inlineFormating = Container(
    // grey box
    child: Center(
      child: Container(
        // red box
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              fontFamily: "Goergia",
            ),
            children: <TextSpan>[
              TextSpan(text: "inline "),
              TextSpan(
                text: "formating",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.red[400],
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget textShortening = Container(
    // grey box
    child: Center(
      child: Container(
        // red box
        child: Text(
          "text shortening sit amet, consec etur",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            fontSize: 48,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        decoration: BoxDecoration(
          color: Colors.red[400],
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 220,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget roundingCorner = Container(
    // grey box
    child: Center(
      child: Container(
        // red circle
        child: Text(
          "rounding corner",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            fontSize: 48,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.all(
            const Radius.circular(8),
          ),
        ),
        padding: EdgeInsets.all(16),
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  Widget makingCircle = Container(
    // grey box
    child: Center(
      child: Container(
        // red circle
        child: Text(
          "making circle",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            fontSize: 48,
          ),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: Colors.red[400],
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(16),
        width: 160,
        height: 160,
      ),
    ),
    width: 320,
    height: 240,
    color: Colors.grey[300],
    margin: EdgeInsets.all(10),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter text styling',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Styling and Alignment'),
        ),
        body: ListView(
          children: [
            normalText,
            boxDecoration,
            containerWidth,
            absolutePosition,
            rotatingComponent,
            scalingComponent,
            verticalGradient,
            horizontalGradient,
            boxShadows,
            letterSpacing,
            inlineFormating,
            textShortening,
            roundingCorner,
            makingCircle,
          ],
        ),
      ),
    );
  }
}
