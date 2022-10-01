import 'dart:convert';

import 'package:exmpl/page/start/start_state.dart';
import 'package:exmpl/page/start/todo.dart';
import 'package:exmpl/repositories/todo_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(StartLoading()) {
    onOpen();
  }

  onOpen() async {
    List<Todo> todos = await TodoRepo.getTodos();

    emit(StartLoaded(values: todos));
  }
}
