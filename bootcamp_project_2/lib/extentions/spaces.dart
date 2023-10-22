import 'package:flutter/material.dart';

extension Spaces on BuildContext {
  getWidth<double>() {
    return MediaQuery.sizeOf(this).width;
  }

  getheight<double>() {
    return MediaQuery.sizeOf(this).height;
  }

  double getTopSpaceBy10Percent() {
    return MediaQuery.sizeOf(this).height * 0.1;
  }

  double getTopSpaceBy15Percent() {
    return MediaQuery.sizeOf(this).height * 0.15;
  }

  double getTopSpaceBy20Percent() {
    return MediaQuery.sizeOf(this).height * 0.2;
  }

  double getTopSpaceBy30Percent() {
    return MediaQuery.sizeOf(this).height * 0.3;
  }
}
