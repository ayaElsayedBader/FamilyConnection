import 'package:flutter/material.dart';

import '../../../core/style/string_app.dart';
import '../../../core/style/text_style.dart';
import '../../../core/style/val_aap.dart';

class ModelMostInteractive extends StatelessWidget {
  const ModelMostInteractive({Key? key, required this.modelInteractive})
      : super(key: key);
  final ModelInteractive modelInteractive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 80,
        width: 345,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            Column(
              children: [
                ValApp.sizeH10,
                Text(StringApp.addC, style: textStyleAdd()),
                const SizedBox(
                  height: 3,
                ),
                Text(StringApp.addS, style: textStyleAdd()),
              ],
            ),
            ValApp.sizeW5,
            Container(
              height: 100,
              width: 15,
              color: Colors.white,
            ),
            Row(
              children: [
                Column(
                  children: [
                    ValApp.sizeH10,
                    Text(
                      modelInteractive.name,
                      style: textStyleName(),
                    ),
                    ValApp.sizeH10,
                    Text(
                      StringApp.most,
                      style: textStyleName(),
                    ),
                  ],
                ),
                ValApp.sizeW10,
                CircleAvatar(
                  backgroundImage: NetworkImage(modelInteractive.image),
                  radius: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ModelInteractive {
  final String name;

  final String image;

  ModelInteractive({required this.name, required this.image});
}

List<ModelInteractive> listModel = [
  ModelInteractive(
      image:
          'https://th.bing.com/th/id/R.fb2c50fc95af0044514f562d4ca8bff3?rik=SqCWZPTKtHq%2fAA&pid=ImgRaw&r=0',
      name: 'Amina'),
  ModelInteractive(
      image: 'https://neswan.cc/wp-content/uploads/2018/07/2098.jpg',
      name: 'Layla'),
  ModelInteractive(
      image:
          'https://th.bing.com/th/id/R.5540ce841c92f9230590a31ae1e395f3?rik=eAy45ZgnX1LP4g&pid=ImgRaw&r=0&sres=1&sresct=1',
      name: 'Noura (Nora)'),
  ModelInteractive(
      image:
          'https://th.bing.com/th/id/R.1fa05787f3ab87d46e71c04b54856b52?rik=Q8K3M%2fp7ojRnpQ&pid=ImgRaw&r=0',
      name: '    Yara'),
  ModelInteractive(
      image:
          'https://i.pinimg.com/originals/cb/64/8a/cb648ae854a8abe867150ef75f0932ce.jpg',
      name: 'Leila'),
  ModelInteractive(
      image:
          'https://th.bing.com/th/id/OIP.-Uctktk4LhtyQ42w5-hMigHaFj?pid=ImgDet&rs=1',
      name: 'Mariam (Maryam)'),
  ModelInteractive(
      image: 'https://womenss.net/wp-content/uploads/2020/10/10337-8.jpg',
      name: 'Sara (Sarah)'),
  ModelInteractive(
      image:
          'https://th.bing.com/th/id/R.bdabab3eb082aa2e6749f63cb9fafb97?rik=uXXsBYjbGhb8CQ&pid=ImgRaw&r=0',
      name: 'Fatima'),
  ModelInteractive(
      image:
          'https://th.bing.com/th/id/R.f6d5f9edbf025a4022dd9dee9e57fbf2?rik=fE4ZHtbaadOOdQ&pid=ImgRaw&r=0',
      name: '  Lina amer'),
  ModelInteractive(
      image: 'https://love-img.com/wp-content/uploads/2018/04/4329-9.jpg',
      name: ' Amira'),
];
