import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                // title: const Text("My Card"),
                title: const RandomImage(),

                subtitle: const Text("Click to see your card information."),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
                // dense: true, // zips the component, deletes its padding
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
