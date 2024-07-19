import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: ColorsItems.cornflowerBlue,
        child: Text(
          "data",
          style: Theme.of(context)
              .textTheme
              .displayLarge
              ?.copyWith(color: Theme.of(context).hintColor),
        ),
      ),
    );
  }
}

class ColorsItems {
  // Name That Color .com
  static const torchRed = Color(0xffFF1430);

  static const Color cornflowerBlue = Color.fromRGBO(97, 149, 237, 1);
}
