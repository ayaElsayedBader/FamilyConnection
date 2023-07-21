import 'package:flutter/material.dart';
import 'package:untitled/core/style/string_app.dart';

import '../../view/chat/page/chat.dart';
import '../../view/chat/page/chat_page.dart';
import '../../view/screen_nav/page/add_post.dart';
import '../../view/screen_nav/page/home.dart';
import '../../view/screen_nav/page/setting.dart';
import '../../view/screen_nav/page/user.dart';



List<BottomNavigationBarItem> itemsNav = const [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(
    icon: Icon(Icons.chat),
    label: 'chat',
  ),
  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'user'),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'setting',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.post_add_rounded),
    label: 'post',
  ),
];

List<String> title = [
  'home',
  'Favorite',
  StringApp.most,
  'setting',
  'Post'
];

List<Widget> screen = [const Home(), const Favorite(), const User(), const SettingsPage () ,const AddPost ()];
