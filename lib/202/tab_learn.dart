import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/image_learn.dart';
import 'package:flutter_application_1/demos/my_collections_demos.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Tabbar"),
        //   bottom: TabBar(controller: _tabController, tabs: const [
        //     Tab(
        //       text: "Page 1",
        //     ),
        //     Tab(
        //       text: "Page 2",
        //     )
        //   ]),
        // ),
        body: _tabBarView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
          shape: const CircleBorder(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          child: _myTabView(),
        ),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
        controller: _tabController,
        // isScrollable: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        onTap: (int index) {},
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(controller: _tabController, children: const [
      ImageLearn(),
      MyCollectionsDemos(),
      MyCollectionsDemos(),
      MyCollectionsDemos(),
    ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewsExtension on _MyTabViews {}
