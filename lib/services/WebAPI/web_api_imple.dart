

import 'dart:convert';

import 'package:apple_music_clone/business_logic/models/m_005_browse_category.dart';
import 'package:apple_music_clone/business_logic/models/m_004_radio.dart';
import 'package:apple_music_clone/business_logic/models/m_003_highlight_radio.dart';
import 'package:apple_music_clone/business_logic/models/m_002_recently_added.dart';
import 'package:apple_music_clone/business_logic/models/m_006_search_response.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:http/http.dart' as http;


class WebApiImple implements WebApi {
  @override
  Future<List<M002RecentlyAdded>> fetchRecentlyAddedList() async {
    List<M002RecentlyAdded> list = [];
    final response = await http.get(Uri.parse('https://dl.dropbox.com/s/pipsolsr05b4sph/recently_added.json?dl=0'));
    
    if (response.statusCode == 200) {
      var responseJSON = json.decode(response.body);
      list = (responseJSON as List).map((e) => M002RecentlyAdded.fromJson(e)).toList();
      return list;
    } else {
      throw UnimplementedError();
    }
  }
  
  @override
  Future<List<M003HighlightRadio>> fetchHighlightRadioList() async {
    List<M003HighlightRadio> list = [];
    final response = await http.get(Uri.parse('https://dl.dropbox.com/s/ww12z7rlg4ilff7/highlight_radio.json?dl=0'));
    
    if (response.statusCode == 200) {
      var responseJSON = json.decode(response.body);
      list = (responseJSON as List).map((e) => M003HighlightRadio.fromJson(e)).toList();
      return list;
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<M004Radio>> fetchRadioList() async {
    List<M004Radio> list = [];
    final response = await http.get(Uri.parse('https://dl.dropbox.com/s/1fnqi7mbqdhry9s/radio.json?dl=0'));
    
    if (response.statusCode == 200) {
      var responseJSON = json.decode(response.body);
      list = (responseJSON as List).map((e) => M004Radio.fromJson(e)).toList();
      return list;
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<M005BrowseCategory>> fetchBrowseCategoryList() async {
    List<M005BrowseCategory> list = [];
    final response = await http.get(Uri.parse('https://dl.dropbox.com/s/6oizhbqvrb7kx58/browse_category.json?dl=0'));
    
    if (response.statusCode == 200) {
      var responseJSON = json.decode(response.body);
      list = (responseJSON as List).map((e) => M005BrowseCategory.fromJson(e)).toList();
      return list;
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<M006SearchResponse> fetchSearchResult(String keywords) async {
    M006SearchResponse result;
    final response = await http.get(Uri.parse('https://itunes.apple.com/search?term="$keywords"&country=HK&entity=musicTrack&limit=20'));

    if (response.statusCode == 200) {
      result = M006SearchResponse.fromJson(json.decode(response.body));
      return result;
    } else {
      throw UnimplementedError();
    }
  }
}