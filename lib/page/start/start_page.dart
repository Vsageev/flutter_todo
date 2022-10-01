import 'package:exmpl/page/start/start_cubit.dart';
import 'package:exmpl/page/start/start_state.dart';
import 'package:exmpl/page/start/todo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartCubit, StartState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              const Text('data'),
              ElevatedButton(onPressed: () {}, child: Text('press')),
              if (state is StartLoaded)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return state.values.map((e) => TodoWidget(todo: e)).toList()[index];
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
