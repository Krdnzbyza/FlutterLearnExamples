import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class PackagesDesign extends StatefulWidget {
  @override
  _PackagesDesignState createState() => _PackagesDesignState();
}

var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
double gap = 10;
List<Color> colors = [
  Colors.purple,
  Colors.pink,
  Colors.green,
  Colors.red,
];
List<Text> text = [
  Text('Home'),
  Text('Like'),
  Text('Search'),
  Text('User'),
];
PageController controller = PageController();

class _PackagesDesignState extends State<PackagesDesign> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        body: PageView.builder(
            itemCount: 4,
            controller: controller,
            onPageChanged: (page) {
              setState(() {
                _index = page;
              });
            },
            itemBuilder: (contex, position) {
              return Container(
                color: colors[position],
                child: Center(
                  child: text[position],
                ),
              );
            }),
        bottomNavigationBar: buildSafeArea(),
      ),
    );
  }

  SafeArea buildSafeArea() {
    return SafeArea(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: -20,
                    blurRadius: 60,
                    offset: Offset(0, 25),
                  )
                ]),
            child: buildGNav()));
  }

  GNav buildGNav() {
    return GNav(
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 900),
      tabs: [
        GButton(
          gap: gap,
          icon: LineAwesomeIcons.home,
          iconColor: Colors.black,
          iconActiveColor: Colors.purple,
          text: 'Home',
          textColor: Colors.purple,
          backgroundColor: Colors.purple.withOpacity(0.2),
          iconSize: 24,
          padding: padding,
        ),
        GButton(
          gap: gap,
          icon: LineAwesomeIcons.heartbeat,
          iconColor: Colors.black,
          iconActiveColor: Colors.pink,
          text: 'Like',
          textColor: Colors.pink,
          backgroundColor: Colors.purple.withOpacity(0.2),
          iconSize: 24,
          padding: padding,
        ),
        GButton(
          gap: gap,
          icon: LineAwesomeIcons.search,
          iconColor: Colors.black,
          iconActiveColor: Colors.green,
          text: 'Search',
          textColor: Colors.green,
          backgroundColor: Colors.green.withOpacity(0.2),
          iconSize: 24,
          padding: padding,
        ),
        GButton(
          gap: gap,
          icon: LineAwesomeIcons.user,
          iconColor: Colors.black,
          iconActiveColor: Colors.red,
          text: 'User',
          textColor: Colors.red,
          backgroundColor: Colors.red.withOpacity(0.2),
          iconSize: 24,
          padding: padding,
        ),
      ],
      selectedIndex: _index,
      onTabChange: (index) {
        setState(() {
          _index = index;
        });
        controller.jumpToPage(index);
      },
    );
  }
}
