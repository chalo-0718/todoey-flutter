import 'package:flutter/material.dart';
import 'package:todo_list_app/constants.dart';
import 'package:todo_list_app/screens/add_task_screen.dart';
import 'package:todo_list_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';
import '';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                  // addTaskCalBack: (taskAdded) {
                  //   // setState(() {
                  //   //   tasks.add(Task(taskTitle: taskAdded));
                  //   // });
                  //   Navigator.pop(context);
                  // },
                  ));
        },
        elevation: 10.0,
        backgroundColor: Colors.lightBlueAccent,
        child: kFloatingIcon,
        shape: kRoundedRectangleBorder,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: kCircleAvatar,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Selector<TaskData, int>(
                    selector: (context, taskData) => taskData.taskCount,
                    builder: (context, taskCount, child) {
                      return Text(
                        '${taskCount} tasks',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      );
                    }),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TasksList(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
