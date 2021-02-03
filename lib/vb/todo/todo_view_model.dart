import 'dart:convert';
import 'dart:io';

import 'package:design/vb/todo/model/todo_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'todo.dart';

abstract class TodoViewModel extends State<Todo> {
  bool isLoading = false;
  final String baseUrl = 'https://jsonplaceholder.typicode.com';
  // List<Todm
  List<TodoModel> todoItems = [];

  void changleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> fetchTodoItems() async {
    changleLoading();
    final response = await http.get('$baseUrl${ServicePath.TODO.rawValue}');
    if (response.statusCode == HttpStatus.ok) {
      // response.bo
      final jsonBody = jsonDecode(response.body);
      if (jsonBody is List) {
        todoItems = jsonBody.map((e) => TodoModel.fromJson(e)).toList();
      }
    }

    changleLoading();
  }
}

// HAAAAAZ
enum ServicePath { TODO }

extension ServicePathStringValue on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.TODO:
        return '/todos';
      default:
        throw Exception("You must be decalere path");
    }
  }
}
