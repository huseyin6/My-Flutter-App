import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("-" * 500),
          ),
          // shrink Creates Empty Area
          const SizedBox.shrink(),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text(
              "+" * 50,
              style: const TextStyle(color: Colors.indigo),
            ),
          ),
          Container(
            height: 100,
            // color: Colors.blueAccent,
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 20, maxHeight: 100),
            padding: const EdgeInsets.all(50), // For Box Inside
            margin: const EdgeInsets.all(20), // For Box Outside
            // Third party ways/packages generally uses for below decoration:
            decoration: ContainerUtility.boxDecoration,
            child: Text(
              "x" * 50,
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}

class ContainerUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.indigo, Colors.black]),
      // shape: BoxShape.circle,
      boxShadow: const [
        BoxShadow(color: Colors.purple, offset: Offset(0.1, 15), blurRadius: 20)
      ],
      border: Border.all(width: 20, color: Colors.yellow));
}

class ContainerDecoration extends BoxDecoration {
  ContainerDecoration()
      : super(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
            gradient:
                const LinearGradient(colors: [Colors.indigo, Colors.black]),
            // shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.purple, offset: Offset(0.1, 15), blurRadius: 20)
            ],
            border: Border.all(width: 20, color: Colors.yellow));
}
