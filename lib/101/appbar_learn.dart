import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});

  final String _title = 'Appbar Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.bluetooth)),
            Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}