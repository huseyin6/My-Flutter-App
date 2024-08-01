import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              child: Column(
                children: [
                  const Expanded(
                    child: RandomImage(),
                  ),
                  Text("$index"),
                ],
              ),
            );
          },
          itemCount: 10),
    );
  }
}
