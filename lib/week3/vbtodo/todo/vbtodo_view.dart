import 'package:design/week3/vbtodo/constant/header_card.dart';
import 'package:flutter/material.dart';

import 'vbtodo_view_model.dart';

class TodoView extends TodoViewModel with PaddingDtas {
  final _colorsBlack = Color(0xff18161a);
  final _gradientColor = LinearGradient(colors: [Colors.red, Colors.blue]);

  ThemeData theme(BuildContext context) => Theme.of(context);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: _paddingHorizontal1x,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: HeadCard(
                    image: ImageConstants().pict1,
                    decripiton: "Categoreis",
                    title: "50+")),
            Spacer(flex: 1),
            Expanded(
                flex: 9,
                child: isLoading
                    ? Center(child: CircularProgressIndicator())
                    : buildListView()),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.format_align_left),
      backgroundColor: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
      title: Text('Category', style: Theme.of(context).textTheme.headline6),
      actions: [
        IconButton(
            icon: Icon(Icons.play_circle_outline_sharp), onPressed: () {})
      ],
      iconTheme: IconThemeData(color: _colorsBlack),
    );
  }

  ListView buildListView() {
    return ListView.builder(
        // TODO: CREATE ATOMIC TODO TASK
        itemBuilder: (context, index) => buildPaddingCard());
  }

  Padding buildPaddingCard() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(
          child: ListTile(
        leading: CircularProgressIndicator(
          value: 1,
          strokeWidth: 5,
        ),
        trailing: Icon(Icons.drag_indicator),
        title: Text("Hello"),
        subtitle: Text('data'),
      )),
    );
  }

  Text buildTextH4(BuildContext context) {
    return Text(
      'Categories',
      style: theme(context)
          .textTheme
          .headline4
          .copyWith(color: theme(context).canvasColor),
    );
  }

  HeadCard({image, String decripiton, String title}) {}
}

class PaddingDtas {
  final _paddingVertial1x = EdgeInsets.symmetric(vertical: 20);
  final _paddingHorizontal1x = EdgeInsets.symmetric(horizontal: 40);
}

class H4CustomText extends StatelessWidget {
  const H4CustomText({Key key, this.title}) : super(key: key);

  ThemeData theme(BuildContext context) => Theme.of(context);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: theme(context)
          .textTheme
          .headline4
          .copyWith(color: theme(context).canvasColor),
    );
  }
}
