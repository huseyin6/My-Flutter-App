import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePaths.apple_with_book.toWidget(height: 500),
    );
  }
}

// ignore: constant_identifier_names
enum ImagePaths { apple_with_book }

extension ImagePathExtension on ImagePaths {
  String getPath() {
    return "assets/images/png/$name.png";
  }

  Widget toWidget({double height = 200}) {
    return Image.asset(
      getPath(),
      height: height,
    );
  }
}
