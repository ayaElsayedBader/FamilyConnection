import 'package:flutter/material.dart';
import '../widgets/model_most_interactive.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: 600,
        child: ListView.separated(
          itemCount: listModel.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ModelMostInteractive(
              modelInteractive: listModel[index],
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Container( height: 20, width: double.infinity,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              border: Border.all( color:const Color( 0XFFff9e80 , ), width: 2)
            ),);
        },
        ),
      ),
    );
  }
}
