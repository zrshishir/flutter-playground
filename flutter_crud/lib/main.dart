import 'package:flutter/material.dart';
import 'package:flutter_crud/database_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Crud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CrudButton(),
    );
  }
}

class CrudButton extends StatefulWidget {
  //reference to our single class that manages our database
  @override
  _CrudButtonState createState() => _CrudButtonState();
}

class _CrudButtonState extends State<CrudButton> {
  final dbHelper = DatabaseHelper.instance;

  String message = "";

  String output = "";

  void _insert() async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: "Shishir",
      DatabaseHelper.columnAge: 28
    };
    final id = await dbHelper.insert(row);

    setState(() {
      message = 'inserted row id: $id';
    });
    print('inserted row id: $id');
  }

  void _query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows are: ');
    output = '';
    allRows.forEach((row) {
      print(row);
      output = '$output$row';
    });
    setState(() {
      message = 'query all rows are: $output';
    });
  }

  void _update() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnId: 2,
      DatabaseHelper.columnName: 'Ziaur',
      DatabaseHelper.columnAge: 29
    };

    final rowAffected = await dbHelper.update(row);
    print('updated $rowAffected row');
    setState(() {
      message = 'updated $rowAffected row';
    });
  }

  void _delete() async {
    final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id);
    print('deleted $rowsDeleted rows: row $id');
    setState(() {
      message = 'deleted $rowsDeleted rows: row $id';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite database'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                "insert",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _insert,
            ),
            RaisedButton(
              child: Text(
                'query',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _query,
            ),
            RaisedButton(
              child: Text(
                'update',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _update,
            ),
            RaisedButton(
              child: Text(
                'delete',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _delete,
            ),
            Text('$message'),
          ],
        ),
      ),
    );
  }
}
