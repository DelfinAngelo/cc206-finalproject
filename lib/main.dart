import 'package:shared_preferences/shared_preferences.dart';

@override
void initState() {
  super.initState();
  _loadTasks();
}

void _loadTasks() async {
  final prefs = await SharedPreferences.getInstance();
  setState(() {
    _tasks.addAll(prefs.getStringList('tasks') ?? []);
  });
}

void _saveTasks() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setStringList('tasks', _tasks);
}

void _addTask(String task) {
  setState(() {
    _tasks.add(task);
    _saveTasks();
  });
}

void _removeTask(int index) {
  setState(() {
    _tasks.removeAt(index);
    _saveTasks();
  });
}
