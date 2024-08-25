import 'package:flutter/material.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _firstAnimatedWidget(context),
      ),
      body: Column(
        children: [
          _firstAnimatedWidget(context),
          const _CustomSizedBox(height: 110),
          _secondAnimatedWidget(),
          const _CustomSizedBox(),
          _thirdAnimatedWidget(context),
          const _CustomSizedBox(height: 50),
          _fourthAnimatedWidget(),
          _fifthAnimatedWidget(context),

          //
          Expanded(
              child: Stack(
            children: [
              const AnimatedPositioned(
                  top: 40, curve: Curves.bounceOut, duration: _DurationItems.durationLow, child: Text("5. Animation")),
              AnimatedList(
                itemBuilder: (context, index, animation) {
                  return const Text("6. Animation");
                },
              )
            ],
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : kZero);
        },
      ),
    );
  }

  AnimatedCrossFade _firstAnimatedWidget(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: Text("First Animation", style: context.textTheme().headlineLarge),
        secondChild: const SizedBox(),
        crossFadeState: _isVisible ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: _DurationItems.durationLow);
  }

  ListTile _secondAnimatedWidget() {
    return ListTile(
      title: AnimatedOpacity(
        duration: _DurationItems.durationLow,
        opacity: _isOpacity ? 1 : kZero,
        child: const Text("Second Animation"),
      ),
      trailing: IconButton(
          onPressed: () {
            _changeOpacity();
          },
          icon: const Icon(Icons.precision_manufacturing_outlined)),
    );
  }

  AnimatedDefaultTextStyle _thirdAnimatedWidget(BuildContext context) {
    return AnimatedDefaultTextStyle(
        style: (_isVisible ? context.textTheme().displayMedium : context.textTheme().displaySmall) ?? const TextStyle(),
        duration: _DurationItems.durationLow,
        child: const Text("Third Animation"));
  }

  AnimatedIcon _fourthAnimatedWidget() => AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller);

  AnimatedContainer _fifthAnimatedWidget(BuildContext context) {
    return AnimatedContainer(
      duration: _DurationItems.durationLow,
      height: _isVisible ? kZero : MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.2,
      color: Colors.red,
      margin: const EdgeInsets.all(10),
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}

class _CustomSizedBox extends StatelessWidget {
  const _CustomSizedBox({
    this.height = 100,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
