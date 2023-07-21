import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/style/val_aap.dart';

import '../../control/social/social_cubit.dart';
import '../../control/social/social_state.dart';
import '../../core/style/list_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
      listener: (BuildContext context, Object? state) {},
      builder: (BuildContext context, state) {
        var cubit = SocialCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search_off_sharp)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
            ],
            title: Text(
              title[cubit.currentState],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              elevation: 5,
              selectedItemColor: Colors.indigo,
              unselectedItemColor: Colors.blue,
              selectedLabelStyle: const TextStyle(
                  color: Colors.green,
                  fontSize: ValApp.va15,
                  fontWeight: FontWeight.bold),
              currentIndex: cubit.currentState,
              onTap: (index) {
                cubit.current(index: index);
              },
              items: itemsNav),
          body: screen[cubit.currentState],
        );
      },
    );
  }
}
