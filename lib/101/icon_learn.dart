import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final IconColor iconColor = IconColor();
  final IconSize iconSize = IconSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Learn')),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic_outlined),
            color: iconColor.micColor,
            iconSize: iconSize.iconSmall,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic_off_outlined),
            color: iconColor.micOffColor,
            iconSize: iconSize.iconMedium,
          ),
          Icon(Icons.ac_unit_outlined),
        ],
      ),
    );
  }
}

class IconColor {
  final Color micColor = Colors.amber;
  final Color micOffColor = Colors.cyan;
}

class IconSize {
  final double iconSmall = 40;
  final double iconMedium = 80;
}
