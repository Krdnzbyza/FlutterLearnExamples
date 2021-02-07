import 'package:design/week3_fix/model/todo_model.dart';
import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  final List<TodoModel> todoItems;

  const ListCard({Key key, this.todoItems}) : super(key: key);
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  final String _userAvatarUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todoItems.length,
      itemBuilder: (context, index) => buildCard(widget.todoItems[index]),
    );
  }

  Padding buildCard(TodoModel todo) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Card(
          child: buildLisTile(todo),
        ));
  }

  ListTile buildLisTile(TodoModel todo) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(_userAvatarUrl),
      ),
      title: Text(todo.username),
      subtitle: Text(todo.email),
      trailing: Text(todo.address.street),
      onTap: () {},
    );
  }
}
