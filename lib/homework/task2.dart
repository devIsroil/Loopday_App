import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class TodoItem {
  String title;
  bool completed;

  TodoItem({required this.title, required this.completed});
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<TodoItem> todoItems = [
    TodoItem(title: 'Apple', completed: false),
    TodoItem(title: 'Banana', completed: false),
    TodoItem(title: 'Orange', completed: false),
  ];

  void isCompleted(int index) {
    setState(() {
      todoItems[index].completed = !todoItems[index].completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: todoItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              isCompleted(index);
            },
            child: ListTile(
              title: Text(
                todoItems[index].title,
                style: TextStyle(
                  decoration: todoItems[index].completed
                      ? TextDecoration.lineThrough
                      : null,
                ),
              ),
              trailing: Checkbox(
                value: todoItems[index].completed,
                onChanged: (value) {
                  isCompleted(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
