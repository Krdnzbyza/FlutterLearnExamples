import 'package:flutter/material.dart';
import 'week1/list_view.dart';
import 'week1/logın_page.dart';
import 'week2/page_design/second_logın_page.dart';
import 'week2_http/http_request/http_hello.dart';
import 'week2_http/http_request/jsan_placeholder_view.dart';
import 'week2_google_package/package.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PackagesDesign(),
      // ListViewPage(),
    );
  }
}
