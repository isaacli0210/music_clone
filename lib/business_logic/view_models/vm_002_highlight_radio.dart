import 'package:apple_music_clone/business_logic/models/m_003_highlight_radio.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:flutter/material.dart';

class VM002HighlightRadio with ChangeNotifier {

  final WebApi _webApi = serviceLocator<WebApi>();

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  List<M003HighlightRadio> _list = [];
  List<M003HighlightRadio> get list => _list;

  Future<void> fetchHighlightRadioList() async {
    _list = await _webApi.fetchHighlightRadioList();
    _isLoading = false;
    notifyListeners();
  }
  

}