import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  final String title = 'Money';
  final String subtitle = 'How much';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListTile Learn')),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
              leading: Icon(Icons.money),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
