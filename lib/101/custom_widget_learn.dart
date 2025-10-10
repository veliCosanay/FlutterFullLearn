import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  final String buttonText = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Widget Learn')),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _CustomButton(buttonText: buttonText),
            ),
          ),
          _CustomButton(buttonText: buttonText),
        ],
      ),
    );
  }
}

class ColorUtility {
  final Color white = Colors.white;
  final Color buttonRed = Colors.red;
}

class PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(10);
  final EdgeInsets normal2xPadding = EdgeInsets.all(20);
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
}

class _CustomButton extends StatelessWidget {
  _CustomButton({required this.buttonText});

  final String buttonText;
  final ColorUtility color = ColorUtility();
  final PaddingUtility padding = PaddingUtility();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color.buttonRed),
      onPressed: () {},
      child: Padding(
        padding: padding.normalPadding,
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
