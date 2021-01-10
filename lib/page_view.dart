/*import 'package:flutter/material.dart';

class listviewpage extends StatefulWidget {
  @override
  _listviewpageState createState() => _listviewpageState();
}

class _listviewpageState extends State<listviewpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.reorder), onPressed: () {}),
          title: Text(
            "Listview",
            style: TextStyle(fontSize: 24, color: Colors.white70),
          ),
          elevation: 10,
          backgroundColor: Color(0xFF6100ed),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.favorite)),
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.event)),
              ]),
        ),
        body: buildColumnbody(),
      ),
    );
  }

  Column buildColumnbody() {
    return Column(
      children: [],
    );
  }
}
*/