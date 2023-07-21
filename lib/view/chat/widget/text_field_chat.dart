import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TextFieldChat extends StatefulWidget {
  const TextFieldChat(
      {Key? key, required this.message, required this.controller})
      : super(key: key);
  final TextEditingController message;

  final ScrollController controller;

  @override
  State<TextFieldChat> createState() => _TextFieldChatState();
}

class _TextFieldChatState extends State<TextFieldChat> {
  final CollectionReference messageChat =
      FirebaseFirestore.instance.collection('ok');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
          controller: widget.message,
          onSubmitted: (data) {
            messageChat.add({'pm': data, 'time': DateTime.now()});

            widget.message.clear();
            widget.controller.animateTo(
                widget.controller.position.maxScrollExtent,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn);
          },
          decoration: InputDecoration(
              prefixIcon: const Text('    😄'),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    messageChat.add({
                      'pm': widget.message.text,
                      'time': DateTime.now(),
                    });
                    widget.message.clear();
                    widget.controller.animateTo(
                        widget.controller.position.maxScrollExtent,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn);
                  });
                },
                icon: const Icon(
                  Icons.send,
                ),
                color: Colors.blue,
              ),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 100),
                  borderRadius: BorderRadius.circular(15)))),
    );
  }
}
