import 'package:flutter/material.dart';
import 'package:design/week3/jsonholder.dart';

class ToDoListView extends StatefulWidget {
  @override
  _ToDoListViewState createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  bool remindMe = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildSafeAreaMainDesign(),
      floatingActionButton: buildFloatingActionButton(context),
    );
  }

  SafeArea buildSafeAreaMainDesign() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40),
          Expanded(flex: 2, child: buildContainerFirst()),
          SizedBox(height: 30),
          Expanded(flex: 6, child: buildColumnTask()),
          SizedBox(height: 40),
          // buildColumnTask(),
          //JsonPlaceHolderData()
        ],
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JsonPlaceHolderData()),
        );
      },
      child: Icon(Icons.navigation),
      backgroundColor: Colors.purple,
    );
  }

  Column buildColumnTask() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildContainerTaskCard(),
        SizedBox(height: 10),
        buildContainerTaskCard(),
        SizedBox(height: 10),
        buildContainerTaskCard(),
        SizedBox(height: 10),
        buildContainerTaskCard(),
      ],
    );
  }

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

  Container buildContainerTaskCard() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:
            20, //horizontal değiştirilmeli //getproportinatescreenwdith(10)
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey[100],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Icon(
              Icons.web_asset,
              color: Colors.orangeAccent,
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            "Work",
            style: TextStyle(
                fontSize: 18,
                height: 1.2,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]),
          ),
          Spacer(),
          Checkbox(
            onChanged: (value) {
              setState(() {
                remindMe = value;
              });
            },
            value: remindMe,
            activeColor: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }

  Container buildContainerFirst() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:
            20, //horizontal değiştirilmeli //getproportinatescreenwdith(10)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 30,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/boxdecoration.jpg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(TextSpan(
        text: " 50 + \n",
        style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal))
        ],
      )),
    );
  }
}
