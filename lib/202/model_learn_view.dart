import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  // final user8 = PostModel8(userId: 8, id: 8, title: "title 8");

  PostModel8 user8 = PostModel8(userId: 8, id: 8, body: "model 8");
  // --- OR ---
  // var user8 = PostModel8(userId: 8, id: 8, title: "title 8");

  @override
  void initState() {
    super.initState();
    final user1 = PostModel()
      ..userId = 1
      ..id = 1
      ..title = "title 1";
    user1.body = "model 1";

    final user2 = PostModel2(2, 2, "title 2", "model 2");
    user2.body = "update model 2";

    final user3 = PostModel3(3, 3, "title 3", "model 3");
    // user3.body = "update model 3";

    final user4 = PostModel4(userId: 4, id: 4, title: "title 4 ", body: "model 4");
    // user4.body = "update model 4";

    final user5 = PostModel5(userId: 5, id: 5, title: "title 5", body: "model 5");
    user5.body;

    final user6 = PostModel6(userId: 6, id: 6, title: "title 6", body: "model 6");
    // user6.

    final user7 = PostModel7();

    // final user8 = PostModel8(userId: 8, id: 8, title: "title 8");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user8.title ?? "No Data"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user8 = user8.copyWith(title: "Copy W/ Title 8");
          user8.updateBody("Body Updated - 8");
        });
      }),
    );
  }
}
