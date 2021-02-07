import 'package:flutter/material.dart';

import 'vbtodo.dart';

abstract class TodoViewModel extends State<Todo> {
  bool isLoading = false;

  void changleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
