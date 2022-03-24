import 'package:apple_music_clone/business_logic/models/m_002_recently_added.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:flutter/material.dart';

class VM001RecentlyAdded with ChangeNotifier {

  final WebApi _webApi = serviceLocator<WebApi>();

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  List<M002RecentlyAdded> _list = [];
  List<M002RecentlyAdded> get list => _list;

  Future<void> fetchRecentlyAddedList() async {
    _list = await _webApi.fetchRecentlyAddedList();
    _isLoading = false;
    notifyListeners();
  }
  

}