import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _customCounter = 0;
  final String _greetingTitle = LanguageItems.greetingTitle;

  void _updateCounter() {
    setState(() {
      ++_customCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
        child: Text(
          "$_greetingTitle $_customCounter",
          style: const TextStyle(color: Colors.white),
        ));
  }
}
