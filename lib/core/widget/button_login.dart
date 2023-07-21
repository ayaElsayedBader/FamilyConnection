import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin(
      {Key? key, required this.onPressed, required this.text, required this.color})
      : super(key: key);
  final void Function()?onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,

      minWidth: 320,
      height: 50,
      color: color,
      child: Text(text
        , style: const TextStyle(color: Colors.white, fontSize: 25),),
    );
  }
}
