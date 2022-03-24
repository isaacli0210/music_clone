import 'package:flutter/material.dart';

class VM006ResultTypeTag with ChangeNotifier {

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  final List<String> _list = ['Top Results', 'Artists', 'Albums', 'Songs', 'Playlists', 'Radio Episodes', 'Stations', 'Music Videos', 'Video Extras', 'Categories', 'Profiles'];
  List<String> get list => _list;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

}