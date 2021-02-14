import 'package:flutter/material.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  String desc = "";

  @override
  Widget build(BuildContext context) => AlertDialog(
          content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Nuovo ToDo", style: TextStyle(fontWeight: FontWeight.bold)),
          TextField(
            autofocus: true,
          ),
          RaisedButton(onPressed: () => {}, child: Text("Salva"))
        ],
      ));
}
