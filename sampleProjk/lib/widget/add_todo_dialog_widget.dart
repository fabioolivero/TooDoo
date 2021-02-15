import 'package:flutter/material.dart';
import 'package:sampleProjk/model/todo.dart';
import 'package:sampleProjk/provider/todos.dart';
import 'package:provider/provider.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String desc = "";

  @override
  Widget build(BuildContext context) => AlertDialog(
      content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Nuovo ToDo", style: TextStyle(fontWeight: FontWeight.bold)),
              TextFormField(
                autofocus: true,
                onChanged: (value) => desc = value,
              ),
              ElevatedButton(onPressed: () => {addTodo()}, child: Text("Salva"))
            ],
          )));

  void addTodo() {
    final todo = Todo(title: desc);
    final provider = Provider.of<TodosProvider>(context, listen: false);
    provider.addTodo(todo);
    Navigator.of(context).pop();
    print("creo nuovo todo: $desc");
  }
}
