import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});

  final String randomImageUrl = 'https://picsum.photos/200/300';
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(randomImageUrl, height: height, fit: BoxFit.cover,);
  }
}