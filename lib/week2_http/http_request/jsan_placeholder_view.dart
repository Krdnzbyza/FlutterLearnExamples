import 'dart:convert';
import 'package:design/week2_http/http_request/model/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JsonPlaceHolder extends StatefulWidget {
  @override
  _JsonPlaceHolderState createState() => _JsonPlaceHolderState();
}

class _JsonPlaceHolderState extends State<JsonPlaceHolder> {
  @override
  void initState() {
    super.initState();
  }

  Future<PostData> getJsonPlaceHolderDatas() async {
    final _response =
        await http.get("https://jsonplaceholder.typicode.com/albums/2");
    if (_response.statusCode == 400) {
      return null;
    }

    final _mapJson = json.decode(_response.body);
    var post = PostData.fromJson(_mapJson);
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center, child: _placeHolderDatasWidget),
    );
  }

  Widget get _placeHolderDatasWidget => FutureBuilder<PostData>(
        future: getJsonPlaceHolderDatas(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListTile(
              title: Text(snapshot.data.title),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
}
