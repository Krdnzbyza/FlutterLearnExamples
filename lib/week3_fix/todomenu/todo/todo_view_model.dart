import 'dart:io';
import 'dart:convert';
import '../../model/todo_model.dart';
import 'package:flutter/material.dart';
import 'todo.dart';
import 'package:http/http.dart' as http;

abstract class TodoViewModel extends State<Todo> {
  bool isloading = false;

  final String baseUrl = 'https://jsonplaceholder.typicode.com';
  List<TodoModel> todoItems = [];

  void changleLoading() {
    setState(() {
      isloading = !isloading;
    });
  }

  Future<List<TodoModel>> fetchTodoItems() async {
    final response = await http.get('$baseUrl${ServicePath.TODO.rawValue}'); //

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = jsonDecode(response.body);

      if (jsonBody is List) {
        todoItems = jsonBody.map((e) => TodoModel.fromJson(e)).toList();
      }
    }
    changleLoading();
  }
}

enum ServicePath { TODO }

extension ServicePathStringValue on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.TODO:
        return '/users';
      default:
        throw Exception('Please ! You fix declare service path');
    }
  }
}
