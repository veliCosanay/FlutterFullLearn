import 'package:flutter/material.dart';

class SizedBoxContainer extends StatelessWidget {
  const SizedBoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox Container')),
      body: Column(
        children: [
          SizedBox(height: 100, width: 100, child: Text('data' * 20)),
          SizedBox.shrink(),
          SizedBox.square(dimension: 50, child: Text('a' * 200)),
          Container(
            constraints: BoxConstraints(
              minWidth: 50,
              maxWidth: 150,
              minHeight: 50,
              maxHeight: 150,
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text('b' * 200),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(colors: [Colors.black, Colors.red]),
    boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
    border: Border.all(width: 10, color: Colors.white),
  );
}
