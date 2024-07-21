import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  // Padding makes an empty place between two components.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              // Makes padding all edges on this component
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                color: Colors.black,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding
                      .pagePaddingRightOnly + // + operator makes an additional padding here. Overrides.
                  ProjectPadding.pagePaddingVertical,
              child: const Text("Flutter"),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 10);
}
