import 'package:flutter/material.dart';

import 'todo.dart';

abstract class TodoViewModel extends State<Todo> {
  bool isLoading = false;

  void changleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
