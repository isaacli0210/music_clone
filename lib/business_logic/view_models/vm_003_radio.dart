
import 'package:apple_music_clone/business_logic/models/m_004_radio.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:flutter/material.dart';

class VM003Radio with ChangeNotifier {

  final WebApi _webApi = serviceLocator<WebApi>();

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  List<M004Radio> _list = [];
  List<M004Radio> get list => _list;

  Future<void> fetchRadioList() async {
    _list = await _webApi.fetchRadioList();
    _isLoading = false;
    notifyListeners();
  }
  

}