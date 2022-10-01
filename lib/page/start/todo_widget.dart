import 'package:exmpl/page/start/todo.dart';
import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            todo.id.toString(),
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Container(height: 5),
          Text(
            todo.title,
          ),
        ],
      ),
    );
  }
}
