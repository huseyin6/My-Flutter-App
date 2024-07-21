import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  final String _imagePath =
      "https://cdn1.iconfinder.com/data/icons/online-education-indigo-vol-1/256/Back_to_School-512.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 200,
              width: 300,
              child: PngImage(name: ImageItems().appleWithBookV2WithoutPath)),
          SizedBox(
              height: 200,
              width: 300,
              child: JpgImage(name: ImageItems().appleWithBookWithoutPath)),
          SizedBox(
              height: 200,
              width: 300,
              child: Image.network(
                _imagePath,
                // When getting network error do:
                errorBuilder: (context, error, stackTrace) =>
                    JpgImage(name: ImageItems().appleWithBookWithoutPath),
              )),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBookWithPath = "assets/images/jpg/books.jpg";
  final String appleWithBookWithoutPath = "books";

  final String appleWithBookV2WithPath =
      "assets/images/png/apple_with_book.png";
  final String appleWithBookV2WithoutPath = "apple_with_book";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => "assets/images/png/$name.png";
}

class JpgImage extends StatelessWidget {
  const JpgImage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => "assets/images/jpg/$name.jpg";
}
