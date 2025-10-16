import 'package:flutter/material.dart';
import 'package:flutter_learn_01/101/navigation_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager{

  List<int> selectedItems = [];

  void selectItem(int index, bool isOkey) {
    setState(() {
      isOkey ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Learn'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async{
            final response = await navigateToWidgetNormal<bool>(context, NavigationDetailLearn(isOkey: selectedItems.contains(index),));

        if (response is bool) {
          selectItem(index, response);
        }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.yellow : Colors.red,
            ),
          ),
        );
      },),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        
        
      },
      child: Icon(Icons.navigate_next),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => widget)
        );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
          MaterialPageRoute(builder: (context) => widget)
        );
  }
}