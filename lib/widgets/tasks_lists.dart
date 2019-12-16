import 'package:flutter/material.dart';
import '../Task.dart';
import 'tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy yogurt'),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context,index){
        return TaskTile(
          name: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState){
            setState(() {
              tasks[index].toggleIsDone();
            });
          },
        );
      }
    );
  }
}