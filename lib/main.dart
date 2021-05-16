import 'package:flutter/material.dart';

import 'increment_bloc.dart';
import 'increment_scene.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _bloc = IncrementBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IncrementScene(_bloc),
    );
  }
}