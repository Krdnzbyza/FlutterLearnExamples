import 'package:flutter/material.dart';

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
        appBar: buildAppBar(),
        body: buildColumnbody(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.reorder), onPressed: () {}),
      title: Text(
        "Listview",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      elevation: 10,
      backgroundColor: const Color(0xFF6100ed),
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
    );
  }

  Column buildColumnbody() {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Card(
                      margin: EdgeInsets.all(10),
                      child: Card(
                          //    width: MediaQuery.of(context).size.height * 0.6,
                          child: Text(index.toString()))),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
