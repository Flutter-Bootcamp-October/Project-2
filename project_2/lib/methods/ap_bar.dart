import 'package:flutter/material.dart';

AppBar apbar({required String title}) => AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shadowColor: Colors.white,
      centerTitle: true,
      title: Text(title),
    );
