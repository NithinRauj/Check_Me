import 'package:flutter/material.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 50.0,
              right: 50.0,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 5.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ),
                  onChanged: (text) {
                    newTaskTitle = text;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                FlatButton(
                  color: Colors.teal,
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {
                    addTaskCallback(newTaskTitle);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
