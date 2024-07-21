import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = "Create your first note";
  final _description = "Add a note...";
  final _createNote = "Create a Note";
  final _importNotes = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBookV2WithoutPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                  textAlign: TextAlign.center, title: _description * 7),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(_createNote,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white)))));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
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

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

// Centered Text Widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {this.textAlign = TextAlign.center, required this.title});

  final TextAlign textAlign;
  final dynamic title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
