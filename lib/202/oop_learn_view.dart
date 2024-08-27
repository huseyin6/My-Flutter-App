import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/oop_learn.dart';

class OOPLearView extends StatefulWidget {
  const OOPLearView({super.key});

  @override
  State<OOPLearView> createState() => _OOPLearViewState();
}

class _OOPLearViewState extends State<OOPLearView> {
  FileDownload? download;

  @override
  void initState() {
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CircularProgressIndicator.adaptive()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          download?.downloadItem(null);
        },
      ),
    );
  }
}
