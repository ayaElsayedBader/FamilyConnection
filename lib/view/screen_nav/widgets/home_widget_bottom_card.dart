import 'package:flutter/material.dart';

import '../../../core/style/string_app.dart';
import '../../../core/style/val_aap.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ValApp.va20 ,vertical: ValApp.val10),
      child: Row(
        children: [
          bottomCard(
              text: StringApp.image, icon: Icons.home, color: Colors.red),
          ValApp.sizeW20,
          bottomCard(
              text: StringApp.tage,
              icon: Icons.tag_rounded,
              color: Colors.green),
          ValApp.sizeW20,
          bottomCard(
            text: StringApp.doc,
            icon: Icons.dashboard,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

Widget bottomCard(
    {required String text, required IconData icon, required Color color}) {
  return Row(
    children: [
      Icon(
        icon,
        color: color,
      ),
      ValApp.sizeW5,
      Text(text)
    ],
  );
}
