import 'package:flutter/material.dart';

class toDoAddScreen extends StatefulWidget {
  const toDoAddScreen({super.key});

  @override
  State<toDoAddScreen> createState() => _toDoAddScreenState();
}

class _toDoAddScreenState extends State<toDoAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTodo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
