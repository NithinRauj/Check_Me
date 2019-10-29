import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkboxCallback;

  ListTileWidget({this.taskName, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
