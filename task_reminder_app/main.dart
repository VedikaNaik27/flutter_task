import 'task.dart';
import 'task_manager.dart';

Future<void> main() async {
  TaskManager manager = TaskManager();

  // Load tasks
  await manager.loadTasks();

  // Display tasks
  manager.displayTasks();

  // Create new task
  Task newTask = Task(
    "Mini Project",
    "Complete Dart assignment",
    "25 April"
  );

  // Add new task
  await manager.addTask(newTask);

  // Display updated tasks
  print("\nAfter Adding New Task:\n");
  manager.displayTasks();
}