// Mixin is a class without Constructor Method

import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void name(params);

  Future<void> launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
