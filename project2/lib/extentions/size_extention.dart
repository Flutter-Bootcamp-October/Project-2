import 'package:flutter/cupertino.dart';

extension GetSize on BuildContext {
  widthSize() {
    return MediaQuery.of(this).size.width;
  }

  heightSize() {
    return MediaQuery.of(this).size.height;
  }
}
