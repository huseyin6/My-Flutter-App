import 'package:flutter/material.dart';
// import 'package:flutter_application_1/101/container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold actually is a skeleton/frame of an any screen.

      // 1. Top
      appBar: AppBar(
        title: const Text("Scaffold Sample Screen"),
      ),

      // 2. Body Part
      body: const Text("Text", style: ScaffoldTextStyle.textStyle),
      backgroundColor: ScaffoldColors.mainBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 400,
                  ));
        },
        backgroundColor: ScaffoldColors.floatingActionButtonBackgroundColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),

      // 3. Bottom Part
      bottomNavigationBar: SizedBox(
        height: 80,
        // decoration: ContainerDecoration(), use Container instead SizedBox
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "1"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "2"),
        ]),
      ),
    );
  }
}

class ScaffoldTextStyle extends TextStyle {
  static const textStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontStyle: FontStyle.italic,
  );
}

class ScaffoldColors {
  static Color get mainBackgroundColor => Colors.grey;
  static Color get floatingActionButtonBackgroundColor => Colors.indigoAccent;
}
