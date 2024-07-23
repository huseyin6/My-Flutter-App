import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomButton(
                  title: title,
                  onPressed: () {},
                )),
          )),
          const SizedBox(height: 100),
          CustomButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// If we use this is as StatelessWidget "with" _ColorsUtility, must do:
mixin class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
        ));
  }
}
