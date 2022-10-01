import 'dart:convert';

import 'package:exmpl/page/start/todo.dart';
import 'package:http/http.dart' as http;

class TodoRepo {
  static Future<List<Todo>> getTodos() async {
    final rez = await http.get(
      Uri.https('jsonplaceholder.typicode.com', '/todos'),
    );

    List<Todo> todos = json.decode(rez.body).map<Todo>((data) => Todo.fromMap(data)).toList();

    return todos;
  }
}
