import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          // print("On changed");
        },
        child: Column(
          children: [
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            TextFormField(
              validator: (value) {
                return (value?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmptyVersionTwo;
              },
            ),
            DropdownButtonFormField<String>(
                validator: FormFieldValidator().isNotEmpty,
                value: "v1", // Default
                items: const [
                  DropdownMenuItem(value: "v1", child: Text("Option 1")),
                  DropdownMenuItem(value: "v2", child: Text("Option 2")),
                ],
                onChanged: (value) {}),
            CheckboxListTile(value: true, onChanged: (value) {}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    // print("Validation worked");
                  }
                },
                child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage()._notEmpty;
  }
}

class ValidatorMessage {
  final String _notEmpty = "Cannot be empty";
  static const String _notEmptyVersionTwo = "This field cannot be empty";
}
