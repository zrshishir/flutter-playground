import 'package:flutter/material.dart';
import 'package:layout/build_button_column.dart';

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildButtonColumn(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          BuildButtonColumn(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          BuildButtonColumn(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}
