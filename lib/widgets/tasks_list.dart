import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:check_me_app/models/task.dart';

class TasksListWidget extends StatefulWidget {
  final List<Task> tasks;
  TasksListWidget(this.tasks);
  @override
  _TasksListWidgetState createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTileWidget(
          taskName: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (currentState) {
            setState(() {
              widget.tasks[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
