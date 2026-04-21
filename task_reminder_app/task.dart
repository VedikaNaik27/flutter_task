class Task {
  String title;
  String description;
  String dueDate;

  Task(this.title, this.description, this.dueDate);

  void display() {
    print("Title       : $title");
    print("Description : $description");
    print("Due Date    : $dueDate");
    print("-----------------------------");
  }
}