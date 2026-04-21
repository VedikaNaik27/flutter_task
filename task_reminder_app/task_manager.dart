import 'task.dart';

class TaskManager {
  List<Task> _tasks = [];

  // Load tasks (simulate async fetch)
  Future<void> loadTasks() async {
    print("Loading tasks...");
    await Future.delayed(Duration(seconds: 2));

    _tasks = [
      Task("Study", "Read Dart async/await", "22 April"),
      Task("Workout", "Evening gym session", "23 April")
    ];

    print("Tasks loaded successfully!\n");
  }

  // Add task (async)
  Future<void> addTask(Task task) async {
    print("Saving task...");
    await Future.delayed(Duration(seconds: 1));

    _tasks.add(task);
    print("Task added successfully!\n");
  }

  // Display tasks
  void displayTasks() {
    if (_tasks.isEmpty) {
      print("No tasks available.\n");
      return;
    }

    print("===== TASK LIST =====");
    for (var task in _tasks) {
      task.display();
    }
  }
}