import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/pages/onboarding.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatefulWidget {
  TodoApp({Key? key}) : super(key: key);

  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //top bar color
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.grey,
        fontFamily: 'rubik',
      ),
      home: Onboarding(),
    );
  }
}
