import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});
  final double? size;
  final double _defaultSize = 50;

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: Colors.black,
      size: size ?? _defaultSize,
    );

    // const SpinKitPianoWave(
    //   color: Colors.black,
    //   size: 50.0,
    // ),

    // SpinKitSquareCircle(
    //   color: Colors.white,
    //   size: 50.0,
    //   controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
    // ),
  }
}
