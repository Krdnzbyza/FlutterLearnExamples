import 'package:flutter/material.dart';

class ToDoListView extends StatefulWidget {
  @override
  _ToDoListViewState createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.short_text),
            color: Colors.black,
            onPressed: () {}),
        backgroundColor: Colors.white,
        title: Text('Schedule',
            style: TextStyle(fontSize: 24, color: Colors.black)),
        elevation: 50,
        actions: [
          IconButton(
              icon: Icon(Icons.add_box), color: Colors.black, onPressed: () {}),
        ],
      ),
      body: Container(),
    );
  }
}
