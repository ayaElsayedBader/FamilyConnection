import 'package:flutter/material.dart';

import '../../core/style/val_aap.dart';

class TextFieldDaf extends StatelessWidget {
    TextFieldDaf(
      {Key? key,
      required this.controller,
      required this.label,
      required this.hint,
      required this.prefixIcon, required this.color , required this.validator} )
      : super(key: key);
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData prefixIcon;
  final Color color;
  String? Function(String?)? validator ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets .symmetric( horizontal:  ValApp.va20, vertical: ValApp.val10),
      child: TextFormField(
        validator: validator ,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(prefixIcon,color:color ,),
          hintText: hint,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(ValApp.val0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(ValApp.val0)),
          ),
        ),
      ),
    );
  }
}
