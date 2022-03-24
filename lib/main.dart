import 'package:apple_music_clone/services/service_locator.dart';
import 'package:apple_music_clone/views/ui/000-TabBar/v_000_a_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  setupServiceLocator();
  runApp(const AppleMusicClone());
}

class AppleMusicClone extends StatelessWidget {
  const AppleMusicClone({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: 'Music',
      debugShowCheckedModeBanner: true,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const V000aTabBar()),
      ],
    );
  }
}