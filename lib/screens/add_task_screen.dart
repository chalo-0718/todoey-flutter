import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String taskAdded = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
          child: Column(
            children: [
              const Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Consumer<TaskData>(
                  // selector: (context, taskData) => taskData.changeUserData(taskAdded),
                  builder: (context, taskData, child) {
                return TextField(
                  onChanged: (newValue) {
                    taskData.changeUserData(newValue);
                  },
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        width: 3.0,
                      ),
                    ),
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Consumer<TaskData>(builder: (context, taskData, child) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Rounded corners
                      ),
                      backgroundColor: Colors.lightBlueAccent,
                      padding: EdgeInsets.all(20.0),
                    ),
                    onPressed: () {
                      context.read<TaskData>().addTaskToList();
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
