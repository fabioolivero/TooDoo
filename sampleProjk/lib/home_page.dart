import 'package:flutter/material.dart';
import 'package:sampleProjk/widget/add_todo_dialog_widget.dart';
import 'package:sampleProjk/widget/todo_list_widget.dart';

class HomePage extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print("Indice tab $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      Container(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("TooDoo"), actions: <Widget>[
        IconButton(icon: Icon(Icons.refresh), onPressed: () => {})
      ]),
      body: tabs[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          child: AddTodoDialogWidget(),
          barrierDismissible: true,
        ),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outline_blank_rounded), label: "ToDo"),
        BottomNavigationBarItem(icon: Icon(Icons.check_box), label: "Done"),
      ], currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}
