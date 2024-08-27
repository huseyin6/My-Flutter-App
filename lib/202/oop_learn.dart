import 'dart:io';

import 'package:flutter_application_1/202/custom_exception.dart';
import 'package:url_launcher/url_launcher_string.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launchUrlString(path);
  }
}

// Extends Class
class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) {
      throw FileDownloadException();
    }
    return true;
  }

  // Extra function can be added by "extends"
  void smsShare() {}
}

// Implements Class: Copies the methods of IFileDownload
class SMSDownload implements IFileDownload {
  // This class uses every IFileDownload methods but, extra function/method cannot be add
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) {
      throw FileDownloadException();
    }
    return true;
  }

  @override
  Future<void> toShare(String path) async {
    await launchUrlString("sms:$path");
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

class SampleDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    throw UnimplementedError();
  }
}

mixin ShareMixin on IFileDownload {
  // void share(args);
  void toShowFile(params) {}
}
