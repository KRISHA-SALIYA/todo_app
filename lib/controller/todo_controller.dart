import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/todo_model.dart';

class TodoController extends ChangeNotifier {
  SharedPreferences prefs;

  final String _keyTask = "all_task";
  final String _keyDate = "all_date";
  final String _keyTime = "all_time";

  List<String> _allTask = [];
  List<String> _allDate = [];
  List<String> _allTime = [];

  List<TodoModels> allTodos = [];

  TodoController({required this.prefs});
  //  User todo List
  List<TodoModels> get getAllTodos {
    _allTask = prefs.getStringList(_keyTask) ?? [];
    _allDate = prefs.getStringList(_keyDate) ?? [];
    _allTime = prefs.getStringList(_keyTime) ?? [];

    allTodos = List.generate(
      _allTask.length,
      (index) => TodoModels(
        task: _allTask[index],
        date: _allDate[index],
        time: _allTime[index],
      ),
    );

    return allTodos;
  }

  //  User todo Add
  void addTodo({
    required String task,
    required String date,
    required String time,
  }) {
    _allTask = prefs.getStringList(_keyTask) ?? [];
    _allDate = prefs.getStringList(_keyDate) ?? [];
    _allTime = prefs.getStringList(_keyTime) ?? [];

    _allTask.add(task);
    _allDate.add(date);
    _allTime.add(time);

    prefs.setStringList(_keyTask, _allTask);
    prefs.setStringList(_keyDate, _allDate);
    prefs.setStringList(_keyTime, _allTime);

    notifyListeners();
  }

  // User tOdo delet
  void removeTodo(TodoModels allTodo, {required int index}) {
    _allTask = prefs.getStringList(_keyTask) ?? [];
    _allDate = prefs.getStringList(_keyDate) ?? [];
    _allTime = prefs.getStringList(_keyTime) ?? [];

    _allTask.removeAt(index);
    _allDate.removeAt(index);
    _allTime.removeAt(index);

    prefs.setStringList(_keyTask, _allTask);
    prefs.setStringList(_keyDate, _allDate);
    prefs.setStringList(_keyTime, _allTime);

    notifyListeners();
  }

  void toggleTodostatus(int index) {}
}

//  Time And Date Controller

class AppController extends ChangeNotifier {
  TextEditingController taskController = TextEditingController();

  String date = "";
  String time = "";

  showDate(BuildContext context) async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2999),
    );

    if (pickDate != null) {
      String formattedDate = DateFormat("dd/MM/yyyy").format(pickDate);
      date = formattedDate;
    }
    notifyListeners();
  }

  showTime(BuildContext context) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (newTime != null) {
      TimeOfDay formattedTime =
          TimeOfDay(hour: newTime.hour, minute: newTime.minute);
      time = formattedTime.format(context);
    }
    notifyListeners();
  }
}

class Todoprovider with ChangeNotifier {
  List<TodoModels> _todos = [];
  List<TodoModels> get todos => _todos;

  void addTodo(TodoModels todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void toggleTodostatus(int index) {
    _todos[index].isDone = !_todos[index].isDone;
  }
}
