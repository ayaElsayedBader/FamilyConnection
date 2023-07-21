import 'package:flutter/material.dart';
import 'package:untitled/view/screen_nav/widgets/card_body.dart';
import 'package:untitled/view/screen_nav/widgets/card_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: CardWidget(),
            ),
            CardBody(),
            CardBody(),
            CardBody(),
            CardBody(),
            CardBody(),
          ],
        ),
      ),
    );
  }
}


