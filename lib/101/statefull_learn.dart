import 'package:flutter/material.dart';
import 'package:flutter_learn_01/product/count_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  
  int _counter = 0;

 

  void _countNumber(isIncrease) {
    if (isIncrease) {
      _counter++;
    } else {
      _counter--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Learn')),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: _incrementButton(),
          ),
          _deincrementButton(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_counter.toString()),
            CountHelloButton()
          ],
        ),
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _countNumber(false);
      },
      child: Icon(Icons.remove),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _countNumber(true);
      },
      child: Icon(Icons.add),
    );
  }
}
