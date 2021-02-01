import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:design/week3/model.dart/postt.dart';
import 'package:http/http.dart' as http;

class JsonPlaceHolderData extends StatefulWidget {
  @override
  _JsonPlaceHolderState createState() => _JsonPlaceHolderState();
}

class _JsonPlaceHolderState extends State<JsonPlaceHolderData> {
  @override
  void initState() {
    super.initState();
  }

  Future<PosstData> getJsonPlaceHolderDatas() async {
    final _response =
        await http.get("https://jsonplaceholder.typicode.com/todos");
    if (_response.statusCode == 400) {
      return null;
    }

    final _mapJson = json.decode(_response.body);
    var post = PosstData.fromJson(_mapJson);
    return post;
  }

  Future<List<PosstData>> getJsonPlaceHolderDatasList() async {
    final _response =
        await http.get("https://jsonplaceholder.typicode.com/todos");
    if (_response.statusCode == 400) {
      return null;
    }

    final _mapJson = json.decode(_response.body);
    if (_mapJson is List) {
      return _mapJson.map((json) => PosstData.fromJson(json)).toList();
    } else {
      throw Exception("List Gelmedi");
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
          alignment: Alignment.center, child: _placeHolderDatasWidgetList),
    );
  }

  Widget get _placeHolderDatasWidgetList => FutureBuilder<List<PosstData>>(
        future: getJsonPlaceHolderDatasList(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.purple,
              ),
              itemCount: 20,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(child: Text(snapshot.data[index].title)),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
  AppBar buildAppBar() {
    return AppBar(
      leading: buildIconButton(),
      backgroundColor: Colors.white,
      title: buildText(),
      elevation: 50,
      actions: [
        IconButton(
            icon: Icon(Icons.add_box), color: Colors.black, onPressed: () {}),
      ],
    );
  }

  Text buildText() {
    return Text(
      'Schedule', //**Texti ortala
      style: Theme.of(context).textTheme.headline5,
    );
  }

  IconButton buildIconButton() {
    return IconButton(
        icon: Icon(Icons.short_text), color: Colors.black, onPressed: () {});
  }
}
