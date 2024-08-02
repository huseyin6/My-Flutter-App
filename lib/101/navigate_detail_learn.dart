import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({super.key, this.isOK = false});
  final bool isOK;

  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOK);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOK ? Colors.red : Colors.green,
            ),
            label: widget.isOK ? const Text("Reject!") : const Text("Approve!")),
      ),
    );
  }
}
