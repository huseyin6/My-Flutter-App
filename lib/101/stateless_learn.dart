import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  final String appBarTitle = "Stateles Learn Widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _emptyBox(),
          const TitleTextWidget(text: "Huseyin"),
          _emptyBox(),
          const TitleTextWidget(text: "Karakaya"),
          _emptyBox(),
          const TitleTextWidget(text: "6"),
          _emptyBox(),
          const _CustomContainer()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

// The operator "_" in front of the _CustomContainer states that this widget will be used only for this file/screen, etc.
// Will not be used/import for other files/screens.
class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.indigo.shade300),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
