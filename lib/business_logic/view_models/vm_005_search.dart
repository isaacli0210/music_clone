import 'package:apple_music_clone/business_logic/models/m_005_browse_category.dart';
import 'package:apple_music_clone/business_logic/models/m_006_search_response.dart';
import 'package:apple_music_clone/business_logic/models/m_006_search_response.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:flutter/material.dart';

class VM005Search with ChangeNotifier {

  final WebApi _webApi = serviceLocator<WebApi>();

  bool _isIdle = true;
  bool get isIdle => _isIdle;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  late M006SearchResponse _m006searchResponse;
  M006SearchResponse get m006searchResponse => _m006searchResponse;

  Future<void> fetchSearchResult(String keywords) async {
    _m006searchResponse = await _webApi.fetchSearchResult(keywords);
    _isIdle = false;
    _isLoading = false;
    notifyListeners();
  }
  

}