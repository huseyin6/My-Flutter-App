import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});

  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icons"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).dialogBackgroundColor,
                size: 40,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Colors.blue,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColor.froly,
                size: iconSize.iconSmall,
              ))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconMedium = 60;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
