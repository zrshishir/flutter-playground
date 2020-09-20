import 'dart:html';

import 'package:flutter/material.dart';

class StyelAlignText extends StatelessWidget {
  StyelAlignText();

  TextStyle makingDefaultStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    fontFamily: "Goergia",
  );

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text(
    //     'Ziaur Rahman Shishir',
    //     style: TextStyle(
    //       fontSize: 24,
    //       fontWeight: FontWeight.w900,
    //       fontFamily: "Goergia",
    //     ),
    //   ),
    //   width: 375,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //box decoration
    // return Container(
    //   child: Text(
    //     'Ziaur Rahman Shishir',
    //     textAlign: TextAlign.center,
    //     style: makingDefaultStyle,
    //   ),
    //   width: 375,
    //   height: 240,
    //   decoration: BoxDecoration(
    //     color: Colors.grey[300],
    //   ),
    // );

    //setting container width
    // return Container(
    //   child: Center(
    //     child: Container(
    //       child: Text(
    //         "zrshishir sumu",
    //         style: makingDefaultStyle,
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.red,
    //       ),
    //       padding: EdgeInsets.all(16),
    //       width: 240,
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //setting absolute positioned
    // return Container(
    //   child: Stack(
    //     children: [
    //       Positioned(
    //         child: Container(
    //             child: Text(
    //               'Ziaur Rahman',
    //               style: makingDefaultStyle,
    //             ),
    //             decoration: BoxDecoration(
    //               color: Colors.red[400],
    //             ),
    //             padding: EdgeInsets.all(16)),
    //         left: 24,
    //         top: 24,
    //       ),
    //     ],
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    // rotating commponents
    // return Container(
    //   child: Center(
    //     child: Transform(
    //       child: Container(
    //         child: Text(
    //           'zrshishir',
    //           style: makingDefaultStyle,
    //         ),
    //         decoration: BoxDecoration(
    //           color: Colors.red[400],
    //         ),
    //         padding: EdgeInsets.all(16),
    //       ),
    //       alignment: Alignment.center,
    //       transform: Matrix4.identity()..rotateZ(30 * 3.1416 / 180),
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //scaling component
    // return Container(
    //   child: Center(
    //     child: Transform(
    //       child: Container(
    //         child: Text(
    //           'zrshishir',
    //           style: makingDefaultStyle,
    //           textAlign: TextAlign.center,
    //         ),
    //         decoration: BoxDecoration(
    //           color: Colors.red[400],
    //         ),
    //         padding: EdgeInsets.all(16),
    //       ),
    //       alignment: Alignment.center,
    //       transform: Matrix4.identity()..scale(1.5),
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //vertical gradient
    // return Container(
    //   // grey box
    //   child: Center(
    //     child: Container(
    //       // red box
    //       child: Text(
    //         "zrshishir",
    //         style: makingDefaultStyle,
    //       ),
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: const Alignment(-1.0, 0.0),
    //           end: const Alignment(0.6, 0.0),
    //           colors: <Color>[const Color(0xffef5350), const Color(0x00ef5350)],
    //         ),
    //       ),
    //       padding: EdgeInsets.all(16),
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //horizontal gradient
    // return Container(
    //   // grey box
    //   child: Center(
    //     child: Container(
    //       // red box
    //       child: Text(
    //         "zrshishir",
    //         style: makingDefaultStyle,
    //       ),
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: const Alignment(0.0, -1.0),
    //           end: const Alignment(0.0, 0.6),
    //           colors: <Color>[const Color(0xffef5350), const Color(0x00ef5350)],
    //         ),
    //       ),
    //       padding: EdgeInsets.all(16),
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //box shadows
    // return Container(
    //   // grey box
    //   child: Center(
    //     child: Container(
    //       // red box
    //       child: Text(
    //         "zrshishir",
    //         style: makingDefaultStyle,
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.red[400],
    //         boxShadow: [
    //           BoxShadow(
    //             color: const Color(0xcc000000),
    //             offset: Offset(0, 2),
    //             blurRadius: 4,
    //           ),
    //           BoxShadow(
    //             color: const Color(0x80000000),
    //             offset: Offset(0, 6),
    //             blurRadius: 20,
    //           ),
    //         ],
    //       ),
    //       padding: EdgeInsets.all(16),
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   decoration: BoxDecoration(
    //     color: Colors.grey[300],
    //   ),
    //   margin: EdgeInsets.only(bottom: 16),
    // );

    //making circles and ellipses
    //

    //adjust text spacing
    // return Container(
    //   // grey box
    //   child: Center(
    //     child: Container(
    //       // red box
    //       child: Text(
    //         "Lorem ipsum",
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 24,
    //           fontWeight: FontWeight.w900,
    //           letterSpacing: 4,
    //         ),
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.red[400],
    //       ),
    //       padding: EdgeInsets.all(16),
    //     ),
    //   ),
    //   width: 320,
    //   height: 240,
    //   color: Colors.grey[300],
    // );

    //making inline formating changes
    // return Container(
    //       // grey box
    //       child: Center(
    //         child: Container(
    //           // red box
    //           child: RichText(
    //             text: TextSpan(
    //               style: makingDefaultStyle,
    //               children: <TextSpan>[
    //                 TextSpan(text: "Lorem "),
    //                 TextSpan(
    //                   text: "ipsum",
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.w300,
    //                     fontStyle: FontStyle.italic,
    //                     fontSize: 48,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           decoration: BoxDecoration(
    //             color: Colors.red[400],
    //           ),
    //           padding: EdgeInsets.all(16),
    //         ),
    //       ),
    //       width: 320,
    //       height: 240,
    //       color: Colors.grey[300],
    //     );

    //making text shortening by ...
    return Container(
      // grey box
      child: Center(
        child: Container(
          // red box
          child: Text(
            "Lorem ipsum dolor sit amet, consec etur",
            style: makingDefaultStyle,
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
    );
  }
}
