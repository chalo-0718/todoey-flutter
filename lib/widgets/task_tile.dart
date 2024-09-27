import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallBack;

  TaskTile({required this.taskTitle, required this.isChecked, required this.checkboxCallback, required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}
