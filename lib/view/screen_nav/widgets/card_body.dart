import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/style/image_app.dart';
import '../../../core/style/string_app.dart';
import '../../../core/style/val_aap.dart';
import 'home_widget_bottom_card.dart';

class CardBody extends StatelessWidget {
  const CardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              //              backgroundColor
              // : Colors.red,
              backgroundImage: CachedNetworkImageProvider(ImageApp.profile),
            ),
            ValApp.sizeW10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      StringApp.profileName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ValApp.sizeW100,
                    Icon(Icons.menu_outlined)
                  ],
                ),
                const SizedBox(width: 280, child: Text(StringApp.post)),
                const Divider(
                  thickness: 1,
                ),
                const Text(
                  StringApp.hash,
                  style: TextStyle(color: Colors.blue),
                ),
                ValApp.sizeH10,
                CachedNetworkImage(
                  imageUrl: ImageApp.postImage,
                  height: 200,
                  fit: BoxFit.cover,
                  width: 300,
                ),
                ValApp.sizeH10,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('👑1200'),
                    ValApp.sizeW150,
                    Text('📜 comments'),
                  ],
                ),
                ValApp.sizeH10,
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(ImageApp.profile),
                    ),
                    const Text(' write a comment...   '),
                    bottomCard(
                        text: 'Like',
                        icon: Icons.favorite_border,
                        color: Colors.red),
                    bottomCard(
                        text: 'share', icon: Icons.share, color: Colors.green),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
