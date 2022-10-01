import 'package:exmpl/page/start/todo.dart';

abstract class StartState {}

class StartLoading extends StartState {}

class StartLoaded extends StartState {
  List<Todo> values;
  StartLoaded({
    required this.values,
  });
}
