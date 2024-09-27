import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/screens/tasks_screen.dart';
import 'package:todo_list_app/models/task_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (create) => TaskData(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
