import 'package:flutter/material.dart';
import 'package:flutter_learn_01/101/scaffold_learn.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ScaffoldLearn(),
    );
  }
}
