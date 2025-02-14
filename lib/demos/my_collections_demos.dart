import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      padding: PaddingUtility().paddingHorizontal,
      itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      },
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text("${_model.price} eth")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art", price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art 2", price: 4.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art 3 ", price: 5.4)
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 20.0);
  final paddingBottom = const EdgeInsets.only(bottom: 40.0);
  final paddingGeneral = const EdgeInsets.all(20.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = "assets/images/png/bag.png";
}
