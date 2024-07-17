import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {},
              // style: ButtonStyle(
              //     backgroundColor: WidgetStateProperty.all<Color>(Colors.red)),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  // Customize button style as states
                  return states.contains(WidgetState.pressed)
                      ? Colors.green
                      : Colors.grey;
                }),
              ),
              child: Text(
                "Ilk Buton",
                // style: const TextStyle(color: Colors.red),
                // Better approach for styling:
                style: Theme.of(context).textTheme.titleLarge,
              )),
          ElevatedButton(onPressed: () {}, child: const Text("Ikinci")),
          // If you want to disable an ElevatedButon
          const ElevatedButton(
              onPressed: null, child: Text("Disabled ElevatedButon")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          // ctrl + space shows the icon immediately
          // Icon(Icons.in) then => ctrl + space
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                // shape: const RoundedCircleBorder()
                shape: const RoundedRectangleBorder(),
                padding: const EdgeInsets.all(20)),
            child: const SizedBox(width: 200, child: Text("Altinci Buton")),
          ),

          InkWell(
            onTap: () {},
            child: const Text("custom"),
            // onTapCancel: () {},
          ),

          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.plus_one),
              label: const Text("Text")),

          Container(height: 200, color: Colors.black38),
          const SizedBox(height: 40),
          // Example:

          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(20)),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
                child: Text(
                  "Place Bid",
                  // style: Theme.of(context).textTheme.headlineMedium,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              )),
        ],
      ),
    );
  }
}
