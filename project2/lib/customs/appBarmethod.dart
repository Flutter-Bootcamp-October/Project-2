// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:project2/textStyle/textStyle.dart';

PreferredSizeWidget appBarmethod(context, String? titleName) {
  return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        titleName!,
        style: TitleStyle(),
      ),
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 15,
          weight: 2,
          color: Colors.black,
        ),
      ));
}
