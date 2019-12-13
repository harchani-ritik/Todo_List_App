import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final String text;

  TasksTile(this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}