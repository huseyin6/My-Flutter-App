import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:flutter_application_1/101/text_learn_view.dart';
// import 'package:flutter_application_1/101/container_sized_box_learn.dart';
// import 'package:flutter_application_1/101/scaffold_learn.dart';
// import 'package:flutter_application_1/101/button_learn.dart';
// import 'package:flutter_application_1/101/appbar_learn.dart';
// import 'package:flutter_application_1/101/icon_learn.dart';
// import 'package:flutter_application_1/101/color_learn.dart';

// import 'package:flutter_application_1/101/stateless_learn.dart';
// import 'package:flutter_application_1/101/padding_learn.dart';
// import 'package:flutter_application_1/101/card_learn.dart';
// import 'package:flutter_application_1/101/image_learn.dart';

// 1. First Demo Screen:
// import 'package:flutter_application_1/demos/note_demos_view.dart';

// import 'package:flutter_application_1/101/custom_widget_learn.dart';
// import 'package:flutter_application_1/101/indicator_learn.dart';
// import 'package:flutter_application_1/101/list_tile_learn.dart';
// import 'package:flutter_application_1/101/column_row_learn.dart';
// import 'package:flutter_application_1/101/stack_learn.dart';

// 2. Second Demo Screen:
// import 'package:flutter_application_1/demos/stack_demo_view.dart';

// import 'package:flutter_application_1/101/statefull_learn.dart';
// import 'package:flutter_application_1/101/page_view_learn.dart';
// import 'package:flutter_application_1/101/statefull_life_cycle_learn.dart';
// import 'package:flutter_application_1/101/text_field_learn.dart';

// 3. Second Demo Screen:
// import 'package:flutter_application_1/demos/color_demos_view.dart';

// 4. Second Demo Screen:
// import 'package:flutter_application_1/demos/color_life_cycle_view.dart';

// import 'package:flutter_application_1/101/list_view_learn.dart';
// import 'package:flutter_application_1/101/list_view_builder_learn.dart';

// 5. Second Demo Screen:
// import 'package:flutter_application_1/demos/my_collections_demos.dart';

// import 'package:flutter_application_1/101/navigation_learn.dart';

// #########################################
// ################## 202 ##################
// #########################################
// import 'package:flutter_application_1/202/tab_learn.dart';
// import 'package:flutter_application_1/202/model_learn_view.dart';
// import 'package:flutter_application_1/202/service/service_get_learn_view.dart';
// import 'package:flutter_application_1/202/service/service_post_learn_view.dart';
// import 'package:flutter_application_1/202/package_learn_view.dart';
import 'package:flutter_application_1/202/theme/light_theme.dart';
// import 'package:flutter_application_1/202/theme_learn_view.dart';

// 6. Demo using password_text_field.dart:
// import 'package:flutter_application_1/202/widget_size_enum_learn.dart';

// import 'package:flutter_application_1/202/image_learn_202.dart';
// import 'package:flutter_application_1/202/animated_learn_view.dart';
// import 'package:flutter_application_1/202/oop_learn_view.dart';
// import 'package:flutter_application_1/202/state_manage/state_manage_learn_view.dart';
// import 'package:flutter_application_1/202/form_learn_view.dart';
// import 'package:flutter_application_1/202/cache/shared_learn_cache.dart';

import 'package:flutter_application_1/202/cache/shared_learn_list_cache.dart';

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
        theme: LightTheme().theme,

        // ThemeData.light().copyWith(
        //   // iconTheme: const IconThemeData(),
        //   tabBarTheme: const TabBarTheme(
        //     labelColor: Colors.blueGrey,
        //     unselectedLabelColor: Colors.indigoAccent,
        //     indicatorColor: Colors.black,
        //   ),
        //   bottomAppBarTheme: const BottomAppBarTheme(
        //     shape: CircularNotchedRectangle(),
        //   ),
        //   progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.indigo),
        //   listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        //   hintColor: ColorsItems.torchRed,
        //   cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        //   inputDecorationTheme: const InputDecorationTheme(
        //       filled: true,
        //       // iconColor: Colors.red, // (!!!!)
        //       border: OutlineInputBorder(),
        //       labelStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400)),
        //   // textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.red)), // (!!!!)
        //   textSelectionTheme: const TextSelectionThemeData(
        //       selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),

        //   // This appBarTheme covers the whole application's AppBar
        //   appBarTheme: const AppBarTheme(
        //     centerTitle: true,
        //     backgroundColor: Colors.transparent,
        //     systemOverlayStyle: SystemUiOverlayStyle.dark,
        //     elevation: 4,
        //   )),
        home: const SharedListCache());
  }
}
