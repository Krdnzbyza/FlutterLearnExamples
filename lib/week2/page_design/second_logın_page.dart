import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

Widget buildLogin() {
  return Container(
    height: 65.0,
    padding: EdgeInsets.zero,
    width: double.infinity,
    child: RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 50,
      onPressed: () {},
      padding: EdgeInsets.zero,
      color: Colors.black,
      child: Text(
        'Sign up',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}

Widget buildLogUp() {
  return Container(
    height: 65.0,
    padding: EdgeInsets.zero,
    width: double.infinity,
    child: RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 50,
      onPressed: () {},
      padding: EdgeInsets.zero,
      color: Colors.white,
      child: Text(
        'Sign in ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget builForgot() {
  return GestureDetector(
      onTap: () => print(" Sign Up!"),
      child: Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: ' Forgot password?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
        ])),
      ));
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(),
        body: Stack(
          children: <Widget>[
            Container(
              child: Positioned.fill(
                child: Image(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              child: buildColumn(),
            ),
          ],
        ));
  }

  Column buildColumn() {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildSizedBox(),
                SizedBox(height: 260),
                buildLogin(),
                SizedBox(height: 10),
                buildLogUp(),
                SizedBox(height: 10),
                builForgot(),
                SizedBox(height: 10),
              ],
            );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(
            'Keep your plants alive',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.short_text), onPressed: () {}),
      backgroundColor: Colors.transparent,
      elevation: 10,
      actions: [
        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
      ],
    );
  }
}
