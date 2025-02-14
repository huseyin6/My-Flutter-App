import 'dart:developer';
import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // showAboutDialog(context: context, applicationName: "Title", children: [const Text("data")]);
          final response = await showDialog(
              context: context,
              //
              // barrierDismissible: false,
              builder: (context) {
                // Dialog
                // AboutDialog
                // AlertDialog
                return const _ImageZoomDialog();
              });

          inspect(response);
        },
      ),
    );
  }
}

// class _UpdateDialog extends StatelessWidget {
//   const _UpdateDialog();

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text("Version updated!"),
//       actions: [
//         ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context, true);
//             },
//             child: const Text("Update")),
//         TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text("Close"))
//       ],
//     );
//   }
// }

class Keys {
  static const versionUpdate = "Version updated!";
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({super.key, required BuildContext context})
      : super(
          title: const Text(Keys.versionUpdate),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text("Update")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Close"))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          "https://picsum.photos/200",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
