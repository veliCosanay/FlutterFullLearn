import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  CardLearn({super.key});

  final ProjectMargin projectMargin = ProjectMargin();
  final String text = 'Veli';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Learn')),
      body: Column(
        children: [
          _CustomCard(
            projectMargin: projectMargin,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text(text)),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.projectMargin, required this.child});

  final ProjectMargin projectMargin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: projectMargin.marginNormal,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}

class ProjectMargin {
  final marginNormal = EdgeInsets.all(20);
}
