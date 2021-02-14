import 'package:flutter/cupertino.dart';
import 'package:sampleProjk/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(title: "Primo", isDone: false),
    Todo(title: "Secondo", isDone: false),
  ];
  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
