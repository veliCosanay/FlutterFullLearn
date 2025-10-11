import 'package:flutter/material.dart';
import 'package:flutter_learn_01/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  final double _cardWidth = 200;
  final double _cardHeight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Demo View')),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(bottom: _cardHeight / 2, child: RandomImage()),
                Positioned(
                  height: _cardHeight,
                  width: _cardWidth,
                  bottom: 0,
                  child: _CustomCard(),
                ),
              ],
            ),
          ),
          Expanded(flex: 6, child: Container()),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard();

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.white, shape: RoundedRectangleBorder());
  }
}
