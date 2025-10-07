import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Learn'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text('data')),
          ElevatedButton(onPressed: () {}, child: Text('data')),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          FloatingActionButton(
            onPressed: () {},
            shape: CircleBorder(),
            child: Icon(Icons.add),
          ),
          InkWell(onTap: () {}, child: Text('data')),
          Container(height: 100, color: Colors.white),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.only(
                top: 15,
                bottom: 15,
                left: 20,
                right: 20,
              ),
              child: Text('Place Bid'),
            ),
          ),
        ],
      ),
    );
  }
}
