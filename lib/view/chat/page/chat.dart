import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
      Image.network(
      'https://th.bing.com/th/id/OIP.WyV4J05qKEK7h-pfly8IpwHaHa?pid=ImgDet&rs=1s',
      fit: BoxFit.fill,
    ),
    SizedBox( height: 240,width: double.infinity,
      child: Image.network(
      'https://i.pinimg.com/originals/0b/44/a0/0b44a0fcc32cc6b77e02b2645052a5fd.jpg',
      fit: BoxFit.fill,
      ),
    )
      ],
    );



  }
}
