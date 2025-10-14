import 'package:flutter/material.dart';

class ColorDemoView extends StatefulWidget {
  const ColorDemoView({super.key, required this.initialColor});

  final Color? initialColor;
  
  @override
  State<ColorDemoView> createState() => _ColorDemoViewState();
}

class _ColorDemoViewState extends State<ColorDemoView> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _backgroundColor = widget.initialColor;
  }

  @override
  void didUpdateWidget(covariant ColorDemoView oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
      
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor =color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: [
          BottomNavigationBarItem(
            icon: _ColorContainer(containerColor: Colors.red),
            label: 'Red',
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(containerColor: Colors.yellow),
            label: 'Yellow',
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(containerColor: Colors.blue),
            label: 'Blue',
          ),
        ],
      ),
    );
  }

  void _colorOnTap(value) {
        if (value == _ColorIndex.red.index) {
          changeBackgroundColor(Colors.red);
        }
        else if(value == _ColorIndex.yellow.index) {
          changeBackgroundColor(Colors.yellow);
        }
        else if(value == _ColorIndex.blue.index) {
          changeBackgroundColor(Colors.blue);
        }
      }
}

enum _ColorIndex { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({required this.containerColor});

  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(width: 10, height: 10, color: containerColor);
  }
}
