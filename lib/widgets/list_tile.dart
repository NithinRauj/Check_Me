import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Buy Eggs'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
