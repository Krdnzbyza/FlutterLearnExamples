import 'package:flutter/material.dart';
import 'list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewPage(),
      // LogPage(),
    );
  }
}
