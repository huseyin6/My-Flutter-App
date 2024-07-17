import 'package:flutter/material.dart';

// import 'package:flutter_application_1/101/text_learn_view.dart';
// import 'package:flutter_application_1/101/container_sized_box_learn.dart';
// import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/button_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const ButtonLearn(),
    );
  }
}
