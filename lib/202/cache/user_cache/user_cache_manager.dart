import 'dart:convert';

import 'package:flutter_application_1/202/cache/shared_manager.dart';
import 'package:flutter_application_1/202/cache/user_model.dart';

class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);

  Future<void> saveItems(final List<User> items) async {
    // Use Compute
    final itemsList = items.map((e) => jsonEncode(e.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, itemsList);
  }

  List<User>? getItems() {
    final itemsString = sharedManager.getStringItems(SharedKeys.users);
    if (itemsString?.isNotEmpty ?? false) {
      return itemsString!.map((e) {
        final json = jsonDecode(e);
        if (json is Map<String, dynamic>) {
          return User.fromJson(json);
        }
        return User("", "", "");
      }).toList();
    }
    return null;
  }
}
