import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});

  final String _title = "Welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        automaticallyImplyLeading: false,
        // elevation: 5, // Separetes AppBard and Body on UI
        // systemOverlayStyle: SystemUiOverlayStyle.dark, // Updates Status Bar
        toolbarTextStyle: const TextStyle(color: Colors.deepOrange),
        actionsIconTheme:
            const IconThemeData(color: Colors.indigo, size: 30, opacity: 0.8),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.mark_email_unread)),
          Text(_title),
        ],
      ),
    );
  }
}
