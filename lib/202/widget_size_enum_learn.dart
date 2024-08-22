import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos/password_text_field.dart';

class WidgetSizeEnumLearn extends StatefulWidget {
  const WidgetSizeEnumLearn({super.key});

  @override
  State<WidgetSizeEnumLearn> createState() => _WidgetSizeEnumLearnState();
}

class _WidgetSizeEnumLearnState extends State<WidgetSizeEnumLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const PasswordTextField(),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Card(
              child: Container(
                height: WidgetSizes.normalCardHeight.value(),
                color: Colors.indigo,
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtention on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 50;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
