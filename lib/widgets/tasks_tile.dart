import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({this.name,this.isChecked,this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name,
        style: TextStyle(
          decoration: isChecked?TextDecoration.lineThrough:null,
        ),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

//(bool checkboxState)
//{
//setState(() {
//isChecked = checkboxState;
//});
//}
