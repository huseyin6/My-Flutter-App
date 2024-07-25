import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/counter_hello_button.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _counter = 0;

  void updateCounter(bool isIncrement) {
    if (isIncrement) {
      _counter += 1;
    } else {
      _counter -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _decrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_counter.toString(), style: Theme.of(context).textTheme.headlineLarge)),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        updateCounter(true);
      },
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
    );
  }

  Padding _decrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
