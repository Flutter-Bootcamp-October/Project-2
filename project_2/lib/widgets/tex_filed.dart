
import 'package:flutter/material.dart';

class TexField extends StatelessWidget {
   TexField({
    super.key,
    required this.hintext,required this.tru,
  });
  final String hintext;
  var tru= false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: tru,
      decoration: InputDecoration(
          fillColor: Color.fromRGBO(236, 240, 241, 1),
          filled:true ,
          hintText: hintext,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Color.fromRGBO(236, 240, 241, 1))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Color.fromRGBO(236, 240, 241, 1)))),
    );
  }
}
