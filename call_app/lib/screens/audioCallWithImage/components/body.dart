import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        //set image
        Image.asset(
          'assets/images/full_image.png',
          fit: BoxFit.cover,
        ),
        //adding opacity
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        //adding text upon on the image
        Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jemmy \nWilliams",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
                Text(
                  "Incoming 00:01".toUpperCase(),
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
