import 'package:flutter/material.dart';

class MediaQuerySize {
  double? _width;
  double? _height;

  MediaQuerySize(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
  }

  double? get width => _width;
  double? get height => _height;

  sizeFromWidth(double size) {
    return _width! / (_width! / size);
  }

  sizeFromHeight(double size) {
    return _height! / (_height! / size);
  }
}
