import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                "Welcome",
                maxLines: 2,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.right,
                style: ProjectStyles.welcomeStyle,
              )
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 3,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.amber,
    fontWeight: FontWeight.w600
  );
}