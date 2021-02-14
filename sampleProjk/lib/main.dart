import 'package:flutter/material.dart';
import 'package:sampleProjk/widget/add_todo_dialog_widget.dart';
import 'package:sampleProjk/widget/todo_widget.dart';
import 'package:sampleProjk/model/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Myapp",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _selectedIndex = 0;
  final tabs = [
    Container(child: TodoWidget(todo: Todo(title: "Prova"))),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print("Indice tab $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TooDoo"), actions: <Widget>[
        IconButton(icon: Icon(Icons.settings), onPressed: () => {})
      ]),
      //body: tabs[_selectedIndex], //Definitivo
      body:
          Container(child: TodoWidget(todo: Todo(title: "Prova"))), //Temporaneo
      drawer: Drawer(
        child: Text("Menu laterale"),
      ),
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
