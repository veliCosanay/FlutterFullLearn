import 'package:flutter/material.dart';
import 'package:flutter_learn_01/product/language/language_items.dart';

class CountHelloButton extends StatefulWidget {
  const CountHelloButton({super.key});

  @override
  State<CountHelloButton> createState() => _CountHelloButtonState();
}

class _CountHelloButtonState extends State<CountHelloButton> {
  int _counterHello = 0;
  final String _buttonMessage = LanguageItems.buttonString;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _counterHello++;
        });
      },
      child: Text('$_buttonMessage $_counterHello'),
    );
  }
}
