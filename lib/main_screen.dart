import 'package:flutter/material.dart';
import 'package:check_me_app/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:check_me_app/models/task_data.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen((newTaskTitle) {
                    // setState(() {
                    //   tasks.add(Task(name: newTaskTitle));
                    // });
                    // Navigator.pop(context);
                  }));
        },
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 20.0,
              right: 20.0,
              bottom: 20.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_box,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    Text(
                      'Check Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              height: 400.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: TasksListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
