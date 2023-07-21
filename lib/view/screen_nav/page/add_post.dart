import 'package:flutter/material.dart';

import '../../../core/style/image_app.dart';
import '../../../core/style/string_app.dart';
import '../../../core/style/val_aap.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 20, left: 5, right: 5),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Positioned(
                    child: Icon(
                  Icons.camera_alt,
                  color: Colors.lightBlueAccent,
                )),
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(220),
                        topRight: Radius.circular(220),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(ImageApp.personProfile),
                          fit: BoxFit.cover)),
                ),
                const Positioned(
                    bottom: -40,
                    left: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100,
                      child: CircleAvatar(
                          radius: 90,
                          backgroundImage: AssetImage('asset/image/ma.jpg')),
                    ))
              ],
            ),
          ),
          ValApp.sizeH20,
          const Text(
            'Aya ELsayed Mahoumd',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildColumn(num: '4789', text: 'follow'),
                    buildColumn(num: '1,2 million👑', text: 'Follower'),
                    buildColumn(num: '378', text: 'posts'),
                    const CircleAvatar(
                      backgroundImage: NetworkImage(ImageApp.personBack),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    buildCard(text: StringApp.friends, onPressed: () {}),
                    buildCard(text: StringApp.betsds, onPressed: () {}),
                    buildCard(text: StringApp.worstfriends, onPressed: () {}),
                  ],
                ),
              ),
              ValApp.size10,
              buildContainer(
                  text: 'Add To The Story +',
                  colorText: Colors.white,
                  color: Colors.indigoAccent,
                  width: 310),
              ValApp.size10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 40,
                      width: 100,
                      child: const Text(
                        '........',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ValApp.sizeW10,
                    buildContainer(
                        text: ' Edit File Person 🖊️',
                        colorText: Colors.white,
                        color: Colors.blue,
                        width: 200),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildColumn({required String num, required String text}) {
    return Column(
      children: [
        Text(
          num,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        ValApp.size10,
        Text(text),
      ],
    );
  }

  Widget buildCard(
      {required String text, required, required void Function()? onPressed}) {
    return Card(
      elevation: 20,
      shadowColor: Colors.white,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        height: 50,
        width: 100,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
      ),
    );
  }

  buildContainer(
      {required String text,
      required Color color,
      required Color colorText,
      required double width}) {
    return Container(
      width: width,
      height: 40,
      color: color,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: colorText),
        ),
      ),
    );
  }
}
