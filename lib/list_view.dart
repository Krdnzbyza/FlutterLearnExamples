import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
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
      title: Text("Listview", style: TextStyle(fontSize: 24, color: Colors.white)),
      elevation: 10,
      backgroundColor: Color(0xFF6100ed),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
      ],
      bottom: TabBar(unselectedLabelColor: Colors.white, labelColor: Colors.black, indicatorColor: Colors.white, tabs: <Widget>[
        Tab(icon: Icon(Icons.favorite)),
        Tab(icon: Icon(Icons.account_circle)),
        Tab(icon: Icon(Icons.event)),
      ]),
    );
  }

  Column buildColumnbody() {
    return Column(
      children: [Expanded(flex: 4, child: buildListViewBuilder()), Expanded(child: buildGridView())],
    );
  }

  GridView buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) => Card(child: Text("data"))),
    );
  }

  ListView buildListViewBuilder() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: Card(
            margin: EdgeInsets.all(10),
            child: Text(index.toString()),
          )),
    );
  }
}
