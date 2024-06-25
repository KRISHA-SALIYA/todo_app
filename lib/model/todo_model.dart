class TodoModels {
  String task;
  String date;
  String time;
  bool isDone;

  TodoModels({
    required this.task,
    required this.date,
    required this.time,
    this.isDone = false,
  });
}
