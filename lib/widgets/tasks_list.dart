import 'package:flutter/material.dart';
import 'list_tile.dart';

class TasksListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
      ],
    );
  }
}
