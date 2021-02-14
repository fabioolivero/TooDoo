import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:sampleProjk/model/todo.dart";

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
        Checkbox(value: todo.isDone, onChanged: (_) {}),
        Text(todo.title)
      ],
    );
  }
}
