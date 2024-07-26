import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        padEnds: false, // Starts in the beginning when false
        onPageChanged: _updatePageIndex,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          )
        ],
      ),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "$_currentPageIndex",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._lowDuration, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._lowDuration, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const Duration _lowDuration = Duration(seconds: 1);
}
