import 'package:flutter/material.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTile('This is task 1'),
        TasksTile('This is task 2'),
      ],
    );
  }
}