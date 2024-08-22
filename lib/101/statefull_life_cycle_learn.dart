import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _evaluateMessageIsOddOrEven();
    // print(1);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // print(2);
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      // _isOdd = widget.message.length.isOdd;

      _evaluateMessageIsOddOrEven();
      setState(() {}); // Update Screen
    }
    // print(3);
  }

  // When exit page:
  @override
  void dispose() {
    super.dispose();
    // print("LOG: Dispose");

    // Clear state
    _message = "";
  }

  void _evaluateMessageIsOddOrEven() {
    if (_isOdd) {
      _message += " Tek";
    } else {
      _message += " Çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {
                // setState(() {
                //   _message = "Update";
                // });
              },
              child: Text(_message)),
    );
  }
}
