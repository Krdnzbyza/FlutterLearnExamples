import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'list_view.dart';


class LogPage extends StatefulWidget {
  @override
  _LogPageState createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildAnnotatedRegion());
  }

  AnnotatedRegion<SystemUiOverlayStyle> buildAnnotatedRegion() {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light, child: buildGestureDetector());
  }

  GestureDetector buildGestureDetector() {
    return GestureDetector(child: buildStackdesign());
  }

  Stack buildStackdesign() {
    return Stack(children: <Widget>[buildContainer()]);
  }

  Column buildColumnmain() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildContainertext(),
          SizedBox(height: 20),
          buildEmail(),
          SizedBox(height: 20),
          buildPassword(),
          SizedBox(height: 40),
          buildLogButton(),
          SizedBox(height: 10),
          buildSignup(),
        ]);
  }

  Container buildContainer() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6100ed),
                Color(0xBf6100ed),
                Color(0x996100ed),
                Color(0x666100ed),
              ]),
        ),
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 120,
            ),
            child: buildColumnmain()));
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0x66B39AD6),
            borderRadius: BorderRadius.only(),
          ),
          height: 60,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  hintText: ' User Name',
                  hintStyle: TextStyle(color: Colors.white))),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0x66B39AD6),
            borderRadius: BorderRadius.only(),
          ),
          height: 60,
          child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: ' Password',
                  hintStyle: TextStyle(color: Colors.white))),
        )
      ],
    );
  }

  Widget buildLogButton() {
    return Container(
     padding: EdgeInsets.all(50.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ListViewPage()));
        },
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF6100ED),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
      ),
    );
  }

  Widget buildSignup() {
    return GestureDetector(
        onTap: () => print(" Sign Up!"),
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Do not have account ?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          TextSpan(
              text: ' Sign Up!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: TextDecoration.underline,
              )),
        ])));
  }

  Container buildContainertext() {
    return Container(
      width: 140,
      height: 120,
      child: Text('V',
          style: TextStyle(
              color: Color(0xBf6100ed),
              fontSize: 100,
              fontWeight: FontWeight.bold)),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ]),
    );
  }
}
