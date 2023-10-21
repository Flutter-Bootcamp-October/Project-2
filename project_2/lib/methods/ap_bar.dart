import 'package:flutter/material.dart';

AppBar apbar({required String title}) => AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shadowColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      title: Text(title),
    );
