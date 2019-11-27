import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'package:provider/provider.dart';
import 'package:check_me_app/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
