import 'package:flutter/material.dart';
import '../../../core/style/image_app.dart';
import '../../../core/style/string_app.dart';
import '../../../core/style/text_style.dart';
import '../../../core/style/val_aap.dart';

class AppBarChat extends StatelessWidget {
  const AppBarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.switch_video_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        ValApp.sizeW20,
        Column(
          children: [
            text18(text: StringApp.maram, font: ValApp.va20),
            const Text(StringApp.actives),
          ],
        ),
        ValApp.sizeW60,
        const CircleAvatar(
          backgroundImage: AssetImage(ImageApp.assetImage),
        )
      ],
    );
  }
}
