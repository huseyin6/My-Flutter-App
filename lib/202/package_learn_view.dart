import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/package/launch_mixin.dart';
import 'package:flutter_application_1/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin, LaunchMixin {
  final Uri _url = Uri.parse('https://pub.dev/packages/url_launcher');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
          onPressed: () {
            launchUrl(_url);
          },
        ),
        body: const LoadingBar());
  }

  @override
  void name(params) {}
}
