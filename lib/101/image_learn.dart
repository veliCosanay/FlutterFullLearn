import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  ImageLearn({super.key});

  final ImagePath imagePath = ImagePath();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Learn')),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: _CustomImage(path: "logo"),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: _CustomImage(path: "logo"),
          ),
        ],
      ),
    );
  }
}

class ImagePath {
  final String degzImagePath = "assets/logo.png";
  final String degzImageWithoutPath = "logo";
}

class _CustomImage extends StatelessWidget {
  const _CustomImage({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_customPath, fit: BoxFit.contain);
  }

  String get _customPath => "assets/$path.png";
}

