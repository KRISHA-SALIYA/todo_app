import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/todo_controller.dart';
import '../../../model/todo_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int? _slide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: const Center(
          child: Text(
            " 👨‍🎓 My Task 👨‍🎓 ",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.green.shade200,
      body: Consumer<TodoController>(
        builder: (context, provider, _) {
          return ListView.builder(
            itemCount: provider.getAllTodos.length,
            itemBuilder: (context, index) {
              final todo = provider.getAllTodos[index];
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        provider.removeTodo(provider.getAllTodos[index],
                            index: index);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    title: Text(
                      todo.task,
                      style: TextStyle(
                          decoration: todo.isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none),
                    ),
                    subtitle: Text(todo.date),
                    // trailing: IconButton(
                    //   icon: Icon(todo.isDone
                    //       ? Icons.check_box
                    //       : Icons.check_box_outline_blank),
                    //   onPressed: () {
                    //     provider.toggleTodostatus(index);
                    //   },
                    // ),
                    trailing: Text(todo.time),
                  ),
                ),
              );
            },
          );
          //  ios slider sigmented controller
          // return CupertinoSlidingSegmentedControl(
          //   children: const {
          //     0: Text("Slide 1"),
          //     1: Text("Slide 2"),
          //     2: Text("Slide 3"),
          //     3: Text("Slide 4"),
          //     4: Text("Slide 5"),
          //   },
          //   groupValue: _slide,
          //   onValueChanged: (int? newValue) {
          //     setState(() {
          //       _slide = newValue;
          //     });
          //   },
          // );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade600,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Consumer<AppController>(
              builder: (context, pro, _) {
                return AlertDialog(
                  shadowColor: Colors.green.shade900,
                  shape: const Border(bottom: BorderSide(color: Colors.black)),
                  backgroundColor: Colors.green.shade100,
                  title: const Center(child: Text(" ⏰ Add TODO ⏰")),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: pro.taskController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: " ✒ TODO",
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          color: Colors.black,
                          onPressed: () {
                            pro.showDate(context);
                          },
                          icon: const Icon(Icons.date_range_outlined),
                        ),
                        Text((pro.date != "") ? pro.date : "Pick Date"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          color: Colors.black,
                          onPressed: () {
                            pro.showTime(context);
                          },
                          icon: const Icon(Icons.watch_later_outlined),
                        ),
                        Text((pro.time != "") ? pro.time : "Pick Time"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final todo = TodoModels(
                            task: pro.taskController.text,
                            date: pro.date,
                            time: pro.time);

                        Provider.of<TodoController>(context, listen: false)
                            .addTodo(
                          task: todo.task,
                          date: todo.date,
                          time: todo.time,
                        );

                        pro.taskController.clear();
                        pro.date = "";
                        pro.time = "";
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade900,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      child: const Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
        child: Icon(Icons.add_alarm),
        splashColor: Colors.white,
      ),
    );
  }
}
