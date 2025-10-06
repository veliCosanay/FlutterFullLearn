import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Text('Scafold learn 1'),
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_outlined),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.back_hand_outlined),
            label: 'backHand',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined),
            label: 'handShake',
          ),
        ],
      ),
    );
  }
}
