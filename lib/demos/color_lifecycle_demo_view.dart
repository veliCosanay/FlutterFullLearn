import 'package:flutter/material.dart';
import 'package:flutter_learn_01/demos/color_demo_view.dart';

class ColorLifecycleDemoView extends StatefulWidget {
  const ColorLifecycleDemoView({super.key});

  @override
  State<ColorLifecycleDemoView> createState() => _ColorLifecycleDemoViewState();
}

class _ColorLifecycleDemoViewState extends State<ColorLifecycleDemoView> {
  Color? _backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Life Cycle Demo'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _backGroundColor = Colors.pink;
              });
            },
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorDemoView(initialColor: _backGroundColor)),
        ],
      ),
    );
  }
}
