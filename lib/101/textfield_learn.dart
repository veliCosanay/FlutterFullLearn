import 'package:flutter/material.dart';

class TextfieldLearn extends StatefulWidget {
  const TextfieldLearn({super.key});

  @override
  State<TextfieldLearn> createState() => _TextfieldLearnState();
}

class _TextfieldLearnState extends State<TextfieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField Learn')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              maxLength: 15,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.mail),
                labelText: 'Mail',
                 
              ),
            )
         ]
        ),
      ),
    );
  }
}
