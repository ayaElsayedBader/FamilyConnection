import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/style/val_aap.dart';
import '../widget/app_bar_chat.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/build_container_chat.dart';
import '../widget/text_field_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController message = TextEditingController();

  final CollectionReference messageChat =
      FirebaseFirestore.instance.collection('ok');

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: ValApp.va400,
        leading: const AppBarChat(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: ValApp.va40),
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: ValApp.va15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StreamBuilder<QuerySnapshot>(
                        stream: messageChat.orderBy('time').snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            if (kDebugMode) {
                              print('Waiting');
                            }
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasData) {
                            if (kDebugMode) {
                              print(' he has data');
                            }

                            return SizedBox(
                                height: 500,
                                child: ListView.builder(
                                    controller: controller,
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context, index) {
                                      return BuildChat(
                                          chat: snapshot.data?.docs[index]
                                              ['pm']);
                                    }));
                          } else if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            if (kDebugMode) {
                              print(' waiting');
                            }
                            return const CircularProgressIndicator();
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              TextFieldChat(
                message: message,
                controller: controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
