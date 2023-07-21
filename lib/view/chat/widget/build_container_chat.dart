


import 'package:flutter/material.dart';

import '../../../core/style/val_aap.dart';
class BuildChat extends StatelessWidget {
  const BuildChat({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final String chat;

  @override
  Widget build(BuildContext context) {
    return buildContainerChat(
        text: chat, radius: ValApp.va15, colorContainer: Colors.blue.shade600);
  }
}
Widget buildContainerChat(
    {required String text,
      required Color colorContainer,
      required double radius}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.all( ValApp.va16),
      padding: const EdgeInsets.only(top:  ValApp. val10, right: ValApp. val10, bottom: 8, left: ValApp. val10,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: colorContainer,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white ,fontSize: ValApp.va16 ), textAlign: TextAlign.right,
      ),
    ),
  );
}