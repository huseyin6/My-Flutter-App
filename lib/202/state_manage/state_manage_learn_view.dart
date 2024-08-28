import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/state_manage/state_learn_view_modal.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModal {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isVisible ? Colors.red : Colors.green,
        shadowColor: isOpacity ? Colors.amber : Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
          // changeOpacity();
        },
      ),
    );
  }
}
