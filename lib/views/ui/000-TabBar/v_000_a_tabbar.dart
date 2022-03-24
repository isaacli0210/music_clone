import 'package:apple_music_clone/views/ui/001-Library/v_001_a_library.dart';
import 'package:apple_music_clone/views/ui/002-Radio/v_002_a_radio.dart';
import 'package:apple_music_clone/views/ui/003-Search/v_003_a_search.dart';
import 'package:flutter/cupertino.dart';

class V000aTabBar extends StatelessWidget {
  const V000aTabBar({ Key? key }) : super(key: key);

  final List<Widget> _tabs = const [
    V001aLibrary(),
    V002aRadio(),
    V003aSearch()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(

      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor.withOpacity(0.9),
        height: 60.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.music_albums_fill),
            label: 'Library'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.dot_radiowaves_left_right),
            label: 'Radio'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search'
          ),
        ],
      ),
      tabBuilder: (BuildContext context, index) {
        return _tabs[index];
      },
    );
  }
}