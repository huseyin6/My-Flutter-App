import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: 20,
              buildCounter: (context, {required currentLength, required isFocused, required maxLength}) =>
                  _animatedContainer(currentLength),
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              // inputFormatters: const [],
              // autofocus: true, // Focus immediately when renders page to this Input TextField
              focusNode: focusNodeTextFieldOne,
              textInputAction: TextInputAction.next,
              decoration: _InputDecorator().emailInput),
          TextField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 1,
            maxLines: 2,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int currentLength) {
    return AnimatedContainer(
      key: UniqueKey(),
      duration: const Duration(milliseconds: 100),
      height: 10,
      width: 10.0 * (currentLength),
      color: Colors.green[100 * (currentLength ~/ 2)],
    );
  }
}

class _InputDecorator {
  final emailInput = InputDecoration(
    prefixIcon: const Icon(Icons.mail),
    labelText: LanguageItems.mailTitle,
    fillColor: Colors.grey.shade300,
  );
}
