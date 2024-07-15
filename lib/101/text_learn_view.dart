import "package:flutter/material.dart";

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.username});
  final String name = "Huseyin";
  final String surname = "Karakaya";
  final String? username;
  final TextViewKeys keys = TextViewKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome, $name ${name.length}",
            maxLines: 2,
            textAlign: TextAlign.left,
            style: const TextStyle(
                wordSpacing: 2,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                fontSize: 20,
                letterSpacing: 2,
                color: Colors.black),
          ),
          Text(
            surname,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: TextViewStyles.welcomeStyle,
          ),
          Text(
            "How are you?",
            maxLines: 2,
            textAlign: TextAlign.left,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: TextViewColors.welcomeColor),
          ),
          Text(username ?? ""),
          Text(
            keys.welcomeText,
            style: TextViewStyles.welcomeStyle,
          ),
        ],
      ),
    ));
  }
}

class TextViewStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      fontSize: 20,
      letterSpacing: 2,
      color: Colors.black);
}

class TextViewColors {
  static Color get welcomeColor => Colors.indigo;
}

class TextViewKeys {
  final String welcomeText = "Hello!";
}
