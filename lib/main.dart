import 'package:exmpl/page/start/start_cubit.dart';
import 'package:exmpl/page/start/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (c) => StartCubit(),
        child: StartPage(),
      ),
    ),
  );
}
