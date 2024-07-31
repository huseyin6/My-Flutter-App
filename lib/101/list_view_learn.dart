import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              LanguageItems.welcomeTitle,
              style: Theme.of(context).textTheme.headlineSmall,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 250,
          ),
          const Divider(),
          SizedBox(
            height: 250,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                color: Colors.teal,
                width: 100,
              ),
              Container(
                color: Colors.cyan,
                width: 100,
              ),
              Container(
                color: Colors.teal,
                width: 100,
              ),
              Container(
                color: Colors.cyan,
                width: 100,
              ),
              Container(
                color: Colors.teal,
                width: 100,
              ),
            ]),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        ],
      ),
    );
  }
}
