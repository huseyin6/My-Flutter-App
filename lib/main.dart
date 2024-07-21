import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:flutter_application_1/101/text_learn_view.dart';
// import 'package:flutter_application_1/101/container_sized_box_learn.dart';
// import 'package:flutter_application_1/101/scaffold_learn.dart';
// import 'package:flutter_application_1/101/button_learn.dart';
// import 'package:flutter_application_1/101/appbar_learn.dart';
// import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/color_learn.dart';

// import 'package:flutter_application_1/101/stateless_learn.dart';
// import 'package:flutter_application_1/101/padding_learn.dart';
// import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';

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
      theme: ThemeData.light().copyWith(
          // iconTheme: const IconThemeData(),

          hintColor: ColorsItems.torchRed,
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),

          // This appBarTheme covers the whole application's AppBar
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 4,
          )),
      home: const ImageLearn(),
    );
  }
}
