import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpView extends StatefulWidget {
  @override
  _HttpViewState createState() => _HttpViewState();
}

class _HttpViewState extends State<HttpView> {
  bool isHaveData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isHaveData = false;
  }

  void getApiAlbum() {
    http.get ("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              isHaveData ? CircularProgressIndicator() : Text("Done.."),
              RaisedButton(
                child: Text("Request"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
