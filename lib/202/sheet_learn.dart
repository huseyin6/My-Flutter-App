import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/image_learn_202.dart';
import 'package:flutter_application_1/core/random_image.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheetMixin {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      body: Center(
        child: TextButton(
            onPressed: () {
              showCustomSheet(context, const ImageLearn202());
            },
            child: const Text("Show")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            context: context,
            backgroundColor: Colors.white, // Transparency for outer background
            barrierColor: Colors.transparent,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(10)),
            ),
            builder: (context) {
              return _CustomSheet(backgroundColor: _backgroundColor);
            },
          );

          inspect(result);

          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.green;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    required Color backgroundColor,
  });

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

mixin ProductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
      context: context,
      backgroundColor: Colors.white, // Transparency for outer background
      barrierColor: Colors.transparent,
      // isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(10)),
      ),
      builder: (context) {
        return _CustomMainSheet(child: child);
      },
    );
  }
}

class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_CustomSheetHeader(backgroundColor: backgroundColor), Expanded(child: child)],
        ),
      ),
    );
  }
}

class _CustomSheetHeader extends StatelessWidget {
  const _CustomSheetHeader({
    required this.backgroundColor,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Divider(
                    color: Theme.of(context).primaryColorDark,
                    thickness: 2,
                    indent: MediaQuery.of(context).size.width * 0.15,
                    endIndent: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Positioned(
                      right: 10,
                      height: 15,
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Icon(Icons.close),
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            color: _backgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Divider(
                        color: Theme.of(context).primaryColorDark,
                        thickness: 2,
                        indent: MediaQuery.of(context).size.width * 0.15,
                        endIndent: MediaQuery.of(context).size.width * 0.15,
                      ),
                      Positioned(
                          top: 0,
                          right: 10,
                          height: 15,
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Icon(Icons.close),
                              )))
                    ],
                  ),
                  const Text("data"),
                  const RandomImage(
                    height: 300,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _backgroundColor = Colors.yellow;
                        });
                        Navigator.of(context).pop<bool>(true);
                      },
                      child: const Text("OK"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
