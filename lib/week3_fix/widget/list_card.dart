import 'package:design/week3_fix/model/todo_model.dart';
import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  final String _userAvatarUrl =
      'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';
  final List<TodoModel> _todoItems = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _todoItems.length,
      itemBuilder: (context, index) => buildCard(_todoItems[index]),
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
