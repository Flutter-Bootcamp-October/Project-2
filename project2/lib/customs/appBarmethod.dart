// ignore_for_file: file_names

import 'package:flutter/material.dart';

PreferredSizeWidget appBarmethod(context, String? titleName) {
  return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        titleName!,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
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
