import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:sampleProjk/model/todo.dart";
import 'package:provider/provider.dart';
import 'package:sampleProjk/provider/todos.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({
    @required this.todo,
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    print("Creato nuovo todo");
    return Row(
      children: [
        Checkbox(
            value: todo.isDone,
            onChanged: (value) {
              final provider =
                  Provider.of<TodosProvider>(context, listen: false);
              provider.removeTodo(todo);
            }),
        Text(todo.title)
      ],
    );
  }
}
