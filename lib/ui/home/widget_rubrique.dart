import 'package:cours_allemand/ui/home/clipper_path_custom.dart';
import 'package:flutter/material.dart';

class WidgetRubrique extends StatelessWidget {
  final Widget? child;

  const WidgetRubrique({
    @required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 20,
          child: PhysicalShape(
            color: Colors.green,
            elevation: 0.0,
            clipper: ClipperPathCustom(50),
            child: Container(
                // width: 400,
                ),
          ),
        ),
        Positioned(
          child: PhysicalShape(
            color: Colors.white,
            elevation: 10.0,
            clipper: ClipperPathCustom(60),
            child: Container(
                // width: 400,
                // child: Center(child: this.child),
                ),
          ),
        ),
        Positioned(
          top: 20,
          left: 30,
          child: Container(
            child: this.child,
          ),
        ),
      ],
    );
  }
}
