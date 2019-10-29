import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool isChecked = false;

  void checkboxCallback(bool currentState) {
    setState(() {
      isChecked = currentState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Eggs',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckboxWidget(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckboxWidget extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxCallback;

  TaskCheckboxWidget(this.checkboxState, this.toggleCheckboxCallback);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal,
      value: checkboxState,
      onChanged: toggleCheckboxCallback,
    );
  }
}
