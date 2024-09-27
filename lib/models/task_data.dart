import 'package:flutter/foundation.dart';
import 'package:todo_list_app/models/task.dart';

class TaskData extends ChangeNotifier {
  int _length = 0;
  String _userInput = '';

  final List<Task> _tasks = [];

  int get taskCount => _tasks.length;
  List<Task> get tasks => _tasks;

  void changeUserData(String newData) {
    _userInput = newData;
    notifyListeners();
  }

  void addTaskToList() {
    _tasks.add(Task(taskTitle: _userInput));
    notifyListeners();
  }

  void updateCheckbox(Task task) {
    task.taskToggle();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
