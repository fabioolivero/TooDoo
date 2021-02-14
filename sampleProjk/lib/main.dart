import 'package:flutter/material.dart';
import 'package:sampleProjk/home_page.dart';
import 'package:provider/provider.dart';
import 'package:sampleProjk/provider/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          home: HomePage(),
        ),
      );
}
