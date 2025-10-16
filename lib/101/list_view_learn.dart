import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Learn')),
      body: ListView(
        children: [
          Text('Merhaba', style: Theme.of(context).textTheme.displayLarge),
          Container(color: Colors.red, height: 200),
          Divider(),
          Container(color: Colors.red, height: 200),
          Divider(),
          Container(color: Colors.red, height: 200),
          Divider(),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Container(color: Colors.red, width: 200),
              Container(color: Colors.white, width: 200),
              Container(color: Colors.red, width: 200),
              Container(color: Colors.white, width: 200),
              Container(color: Colors.red, width: 200),
            ]),
          ),
        ],
      ),
    );
  }
}
