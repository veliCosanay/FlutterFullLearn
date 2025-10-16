import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn_01/demos/my_collections_demo.dart';

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
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.white,
          
          
        ),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
          backgroundColor: Colors.blue,
        )
      ),
      home: MyCollectionsDemo(),
    );
  }
}
