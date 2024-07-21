import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            elevation: 10,
            margin: ProjectsMargins.cardMargin,
            color: Colors.indigo,
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
              width: 400,
              child: Center(child: Text("Flutter")),
            ),
          ),
          Card(
            elevation: 10,
            margin: ProjectsMargins.cardMargin,
            color: Theme.of(context).colorScheme.error,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const SizedBox(
              height: 100,
              width: 300,
            ),
          ),
          const _CustomCard(
            color: Colors.blueGrey,
            child: SizedBox(
                height: 100,
                width: 400,
                child: Center(child: Text("Flutter V1"))),
          ),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child, required this.color});

  final Color color;
  // final stadiumBorder = const StadiumBorder();
  final double elevation = 10;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: ProjectsMargins.cardMargin,
      color: color,
      // shape: stadiumBorder,
      child: child,
    );
  }
}

class ProjectsMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}
