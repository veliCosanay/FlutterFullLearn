import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indicator Learn'),
        actions: [
          CentereCircularProgress()
        ],
      ),
      body: LinearProgressIndicator(),
    );
  }
}

class CentereCircularProgress extends StatelessWidget {
  const CentereCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(),);
  }
}