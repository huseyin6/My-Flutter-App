import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(
          height: 10,
          width: 40,
          color: Colors.green[100 * (currentLength ~/ 2)],
        ),
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.mail),
            border: const OutlineInputBorder(),
            labelText: "Mail",
            fillColor: Colors.grey.shade300,
            filled: true),
      ),
    );
  }
}
