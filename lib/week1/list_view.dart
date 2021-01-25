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
      title:
          Text("Listview", style: TextStyle(fontSize: 24, color: Colors.white)),
      elevation: 10,
      backgroundColor: Color(0xFF6100ed),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
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
        Expanded(flex: 2, child: buildListViewBuilder()),
        Expanded(child: buildGridView())
      ],
    );
  }

  GridView buildGridView() {
    return GridView.count(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: List.generate(10,
          (index) => SizedBox(child: Card(elevation: 5, child: Text("data")))),
    );
  }

  ListView buildListViewBuilder() {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                elevation: 10,
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(
                      child: ListTile(
                        leading: Icon(Icons.account_circle, size: 100),
                        title: Text('Beyza Karadeniz'),
                        subtitle: Text('Description'),
                        trailing: Icon(Icons.favorite_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
