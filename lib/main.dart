import 'package:flutter/material.dart';

import 'week3_fix/todomenu/todo/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Todo(),
    );
  }
}
