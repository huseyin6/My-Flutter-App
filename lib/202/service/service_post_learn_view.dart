import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/post_model.dart';
import 'package:flutter_application_1/202/service/post_service.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({super.key});

  @override
  State<ServicePostLearnView> createState() => _ServicePostLearnViewState();
}

class _ServicePostLearnViewState extends State<ServicePostLearnView> {
  String? message;
  bool _isLoading = false;

  late final IPostService _postService;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  final String title = "Title";
  final String body = "Body";
  final String userId = "UserId";
  final String send = "Send";

  @override
  void initState() {
    super.initState();
    _postService = PostService();
  }

  Future<void> _addItemToService(PostModelApi postModel) async {
    _changeLoading();
    final response = await _postService.addItemToService(postModel);
    if (response) {
      setState(() {
        message = "Done";
      });
    }
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(message ?? " "),
          actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
        ),
        body: Column(
          children: [
            _InputField(
              controller: _titleController,
              text: title,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            _InputField(
              controller: _bodyController,
              text: body,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            _InputField(
              controller: _userIdController,
              text: userId,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModelApi(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_userIdController.text));

                          _addItemToService(model);
                        }
                      },
                child: Text(send)),
          ],
        ));
  }
}

class _InputField extends StatelessWidget {
  const _InputField({
    required TextEditingController controller,
    required String text,
    required TextInputType keyboardType,
    required TextInputAction textInputAction,
  })  : _inputController = controller,
        _text = text,
        _keyboardType = keyboardType,
        _textInputAction = textInputAction;

  final TextEditingController _inputController;
  final String _text;
  final TextInputType _keyboardType;
  final TextInputAction _textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _inputController,
      keyboardType: _keyboardType,
      decoration: InputDecoration(labelText: _text),
      textInputAction: _textInputAction,
    );
  }
}
