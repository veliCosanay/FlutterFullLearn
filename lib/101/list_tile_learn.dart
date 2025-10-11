import 'package:flutter/material.dart';
import 'package:flutter_learn_01/core/random_image.dart';

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
              title: RandomImage(),
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
