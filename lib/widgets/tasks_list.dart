import 'package:check_me_app/models/task_data.dart';
import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:provider/provider.dart';

class TasksListWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTileWidget(
              taskName: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (currentState) {
                // setState(() {
                // Provider.of<TaskData>(context).tasks[index].toggleIsDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
