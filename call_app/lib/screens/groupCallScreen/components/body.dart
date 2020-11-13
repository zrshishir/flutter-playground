import 'package:call_app/components/dial_user_pic.dart';
import 'package:call_app/constants.dart';
import 'package:call_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: demoData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.53,
        crossAxisCount: 2,
        // mainAxisSpacing: 20,
        // crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) => demoData[index]['isCalling']
          ? UserCallingCard(
              name: demoData[index]['name'], image: demoData[index]['image'])
          : Image.asset(
              demoData[index]['image'],
            ),
    );
  }
}

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key key,
    @required this.name,
    @required this.image,
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUser(
            size: 112,
            image: image,
          ),
          VerticalSpacing(
            of: 10,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          VerticalSpacing(
            of: 5,
          ),
          Text(
            "Calling...",
            style: TextStyle(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "User1",
    "image": "assets/images/goup_call_1.png"
  },
  {
    "isCalling": true,
    "name": "John steve",
    "image": "assets/images/group_call_face_small.png"
  },
  {
    "isCalling": false,
    "name": "User2",
    "image": "assets/images/group_call_face_2.png"
  },
  {
    "isCalling": false,
    "name": "User3",
    "image": "assets/images/group_call_face_3.png"
  },
];
