
import 'package:apple_music_clone/business_logic/models/m_004_radio.dart';
import 'package:apple_music_clone/business_logic/models/m_005_browse_category.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:flutter/material.dart';

class VM004BrowseCategory with ChangeNotifier {

  final WebApi _webApi = serviceLocator<WebApi>();

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  List<M005BrowseCategory> _list = [];
  List<M005BrowseCategory> get list => _list;

  Future<void> fetchBrowseCategoryList() async {
    _list = await _webApi.fetchBrowseCategoryList();
    _isLoading = false;
    notifyListeners();
  }
  

}