import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModal extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacity = false;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
