import 'package:flutter/material.dart';
import 'package:flutter_learn_01/101/icon_learn.dart';
import 'package:flutter_learn_01/101/image_learn.dart';
import 'package:flutter_learn_01/101/indicator_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.linear,
                );
              },
              child: Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.linear);
              },
              child: Icon(Icons.chevron_right), 
            ),
          
          ],
        ),
      ),
      appBar: AppBar(title: Text('Page View Learn')),
      body: PageView(
        controller: _pageController,
        children: [IconLearn(), IndicatorLearn(), ImageLearn(),],
      ),
    );
  }
}
