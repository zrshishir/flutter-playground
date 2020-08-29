import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:stateful_widget/parent_widget.dart';

void main(List<String> args) {
  runApp(WidgetToWidget());
}

class WidgetToWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget Demo'),
        ),
        body: Center(
          child: ParentWidget(),
        ),
      ),
    );
  }
}

class TapBoxA extends StatefulWidget {
  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(
              fontSize: 32.00,
              color: Colors.white,
            ),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
