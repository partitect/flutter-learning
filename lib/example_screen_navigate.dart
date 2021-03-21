import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  final Todo todo;

  const FirstRoute({Key key, this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(todo.name);
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Navigation Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class Todo {
  String name;
  Todo({this.name});
}
