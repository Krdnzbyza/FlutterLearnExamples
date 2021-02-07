import '../../widget/list_card.dart';
import 'package:flutter/material.dart';
import 'todo_view_model.dart';

class TodoView extends TodoViewModel with PaddingDtas {
  final _colorsBlack = Color(0xff24242d);
  final bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchTodoItems();
  }

  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
        appBar: buildAppBar(context),
        body:
            Padding(padding: _paddingHorizontal1x, child: _isLoading ? Center(child: CircularProgressIndicator()) : ListCard(todoItems: todoItems)));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.format_align_justify_rounded),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text('Users', style: Theme.of(context).textTheme.headline6),
      actions: [
        IconButton(
          icon: Icon(Icons.search_rounded),
          onPressed: () {},
        )
      ],
      iconTheme: IconThemeData(color: _colorsBlack),
    );
  }
}

class PaddingDtas {
  final _paddingHorizontal1x = EdgeInsets.symmetric(horizontal: 20);
}
