import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  PaddingLearn({super.key});

  final PagePadding pagePadding = PagePadding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Learn'),
      ),
      body: Column(
        children: [
          Padding(
            padding: pagePadding.paddingAll,
            child: Container(
              color: Colors.red, height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 15) + pagePadding.paddingHorizontal,
            child: Container(
              color: Colors.red, height: 100,
            ),
          )
        ],
      ),
    );
  }
}

class PagePadding {
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
  final paddingAll = EdgeInsets.all(8.0);
}