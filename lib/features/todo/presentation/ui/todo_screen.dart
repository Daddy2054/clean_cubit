import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        centerTitle: true,
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          context.push('/addToDo');
        },
        child: const Icon(
          Icons.add,
        ),
        heroTag: 'addToDo',
      ),
    );
  }
}
