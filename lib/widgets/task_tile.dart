import 'package:flutter/material.dart';

// Task tile widget.
class TaskTile extends StatefulWidget {
  TaskTile({required this.TaskTileText});
  final String TaskTileText;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = true;
  
  void checkBoxCallBack(bool? value){
    setState(() {
      isChecked = value ?? false;
    });
  }


  @override
  void initState() {
    super.initState();
    widget.TaskTileText;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.TaskTileText,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: checkBox(isChecked: isChecked, checkBoxStateToggler: checkBoxCallBack),
    );
  }
}

// checkBox widget.
class checkBox extends StatelessWidget {
  final bool? isChecked;
  final Function(bool?) checkBoxStateToggler;

  checkBox({required this.isChecked, required this.checkBoxStateToggler});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: checkBoxStateToggler,
    );
  }
}
