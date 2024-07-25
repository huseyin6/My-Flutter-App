import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        // 4+2+2+2
        Expanded(
            flex: 4, // 40%
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.indigo.shade200,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple.shade200,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade100,
                  ),
                ),
              ],
            )),
        const Spacer(flex: 2), // 20%

        const Expanded(
            flex: 2, // 20%
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("a", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("a1", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("a2", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            )),

        const Expanded(flex: 2, child: FlutterLogo()), // 20%

        const SizedBox(
          height: ProjectContainerSizes.cardWeight,
          child: Column(
            children: [
              Expanded(child: Text("data0")),
              Expanded(child: Text("data1")),
              Expanded(child: Text("data2")),
              Expanded(child: Text("data3")),
            ],
          ),
        )
      ]),
    );
  }
}

class ProjectContainerSizes {
  static const double cardWeight = 200;
}
