import 'package:flutter/foundation.dart';
import 'package:hurly_burly/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: "Complete Leetcode"),
    Task(taskName: "Flutter"),
    Task(taskName: "Office work")
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskName) {
    _tasks.add(new Task(taskName: taskName));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
