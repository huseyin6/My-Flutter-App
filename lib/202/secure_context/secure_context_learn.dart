import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/cache/shared_learn_cache.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureContextLearn extends StatefulWidget {
  const SecureContextLearn({super.key});

  @override
  State<SecureContextLearn> createState() => _SecureContextLearnState();
}

enum _SecureContextKeys { token }

class _SecureContextLearnState extends LoadingStatefull<SecureContextLearn> {
  final _storage = const FlutterSecureStorage();
  String _title = "";
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async {
    _title = await _storage.read(key: _SecureContextKeys.token.name) ?? "";
    if (_title.isNotEmpty) {
      _controller.text = _title;
    }
    setState(() {});
  }

  void saveInput(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? const CircularProgressIndicator() : Text(_title),
      ),
      body: TextField(
        onChanged: saveInput,
        controller: _controller,
        minLines: 2,
        maxLines: 3,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _storage.write(key: _SecureContextKeys.token.name, value: _title);
        },
        child: const Text("Save"),
      ),
    );
  }
}
