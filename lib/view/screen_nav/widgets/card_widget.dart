import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/style/string_app.dart';
import '../../../core/style/val_aap.dart';
import '../../chat/page/chat_page.dart';
import 'home_widget_bottom_card.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                //              backgroundColor
                // : Colors.red,
                backgroundImage: CachedNetworkImageProvider(
                    'https://th.bing.com/th/id/OIP.rod5yq1XwKPFCMfBvy8wZgHaIC?pid=ImgDet&rs=1'),
              ),
              ValApp.sizeW20,
              const Column(
                children: [
                  Text(
                    StringApp.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(StringApp.profile),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatPage(),
                        ));
                  },
                  icon: const Icon(
                    Icons.chat,
                    color: Colors.blue,
                  )),
              const Text('Message')
            ],
          ),
          ValApp.sizeH15,
          const Row(
            children: [
              CircleAvatar(
                //              backgroundColor
                // : Colors.red,
                backgroundImage: CachedNetworkImageProvider(
                    'https://th.bing.com/th/id/OIP.rod5yq1XwKPFCMfBvy8wZgHaIC?pid=ImgDet&rs=1'),
              ),
              ValApp.sizeW20,
              Text(StringApp.what)
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          const BottomCardWidget()
        ],
      ),
    );
  }
}
