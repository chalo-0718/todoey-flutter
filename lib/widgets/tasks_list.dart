import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].taskTitle,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (bool? value) {
              taskData.updateCheckbox(taskData.tasks[index]);
            },
            longPressCallBack: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
      );
    });
  }
}
