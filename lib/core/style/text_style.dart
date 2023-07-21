import 'package:flutter/material.dart';

// TextStyle textStyle18 = TextStyle(  fontSize: 18, fontWeight:  FontWeight.bold);

TextStyle textStyle({double font = 18, FontWeight fonW = FontWeight.w700}) {
  return TextStyle(
    fontSize: font,
    fontWeight: fonW,
  );
}

Text text18(
    {required String text,
    double font = 18,
    FontWeight fonW = FontWeight.w700}) {
  return Text(
    text,
    style: TextStyle(fontWeight: fonW, fontSize: font),
  );
}

TextStyle textStyleAdd() {
  return const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18, color: Color(0XFFff9e80));
}

TextStyle textStyleName() {
  return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.white,
      fontStyle: FontStyle.italic);
}
