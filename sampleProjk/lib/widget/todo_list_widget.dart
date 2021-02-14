import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleProjk/provider/todos.dart';
import 'package:sampleProjk/widget/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;

    return ListView.separated(
      itemCount: todos.length,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      separatorBuilder: (BuildContext context, int index) =>
          Container(height: 8),
      itemBuilder: (context, index) {
        final todo = todos[index];
        return TodoWidget(todo: todo);
      },
    );
  }
}
