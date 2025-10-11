import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Row Learn')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.brown)),
                Expanded(child: Container(color: Colors.blue)),
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.redAccent)),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            ),
          ),
          Expanded(flex: 2, child: Container(color: Colors.indigo)),
          Expanded(flex: 2, child: Container(color: Colors.yellow)),
        ],
      ),
    );
  }
}
