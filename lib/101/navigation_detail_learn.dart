import 'package:flutter/material.dart';

class NavigationDetailLearn extends StatefulWidget {
  const NavigationDetailLearn({super.key, this.isOkey = false});
  final bool isOkey;
  @override
  State<NavigationDetailLearn> createState() => _NavigationDetailLearnState();
}

class _NavigationDetailLearnState extends State<NavigationDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Detail Learn'),
      ),
      body: Center(
        child: ElevatedButton.icon(onPressed: () {
          Navigator.of(context).pop(!widget.isOkey);
        }, icon: Icon(widget.isOkey ? Icons.cancel_outlined : Icons.check),label: widget.isOkey ? Text('Reddet') : Text('Onayla')),
      ),
    );
  }
}