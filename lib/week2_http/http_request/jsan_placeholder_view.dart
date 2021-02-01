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
        await http.get("https://jsonplaceholder.typicode.com/albums");
    if (_response.statusCode == 400) {
      return null;
    }

    final _mapJson = json.decode(_response.body);
    var post = PostData.fromJson(_mapJson);
    return post;
  }

  Future<List<PostData>> getJsonPlaceHolderDatasList() async {
    final _response =
        await http.get("https://jsonplaceholder.typicode.com/albums/");
    if (_response.statusCode == 400) {
      return null;
    }

    final _mapJson = json.decode(_response.body);
    if (_mapJson is List) {
      return _mapJson.map((json) => PostData.fromJson(json)).toList();
    } else {
      throw Exception("List Gelmedi");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center, child: _placeHolderDatasWidgetList),
    );
  }

  // Widget get _placeHolderDatasWidget => FutureBuilder<PostData>(
  //       future: getJsonPlaceHolderDatas(),
  //       builder: (BuildContext context, AsyncSnapshot snapshot) {
  //         if (snapshot.hasData) {
  //           return ListTile(
  //             title: Text(snapshot.data.title),
  //           );
  //         } else {
  //           return Center(child: CircularProgressIndicator());
  //         }
  //       },
  //     );

  Widget get _placeHolderDatasWidgetList => FutureBuilder<List<PostData>>(
        future: getJsonPlaceHolderDatasList(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data[index].title),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
}
