import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({required this.TaskTileText});
  final String TaskTileText;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool _isChecked = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
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
      ),
      trailing: Checkbox(
        value: _isChecked,
        onChanged: _toggleCheckbox,
      ),
    );
  }
}
