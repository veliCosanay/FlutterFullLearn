import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  final String text = 'veli';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Learn'),
      ),
      body: Column(
        children: [
          _CustomText(text: text,)
        ],
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  const _CustomText({required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium,);
  }
}