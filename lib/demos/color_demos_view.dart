// import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.grey;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    // inspect(widget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: "Red"),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.green,
            ),
            label: "Green"),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.indigo,
            ),
            label: "Indigo")
      ]),
    );
  }

  void _colorOnTap(value) {
    // print(value);
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.green.index) {
      changeBackgroundColor(Colors.green);
    } else if (value == _MyColors.indigo.index) {
      changeBackgroundColor(Colors.indigo);
    }
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

enum _MyColors { red, green, indigo }
