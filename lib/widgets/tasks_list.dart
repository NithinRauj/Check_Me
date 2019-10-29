import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:check_me_app/models/task.dart';

class TasksListWidget extends StatefulWidget {
  @override
  _TasksListWidgetState createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  List<Task> tasks = [
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTileWidget(
          taskName: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (currentState) {
            setState(() {
              tasks[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
