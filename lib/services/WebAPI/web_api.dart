import 'package:apple_music_clone/business_logic/models/m_002_recently_added.dart';
import 'package:apple_music_clone/business_logic/models/m_003_highlight_radio.dart';
import 'package:apple_music_clone/business_logic/models/m_004_radio.dart';
import 'package:apple_music_clone/business_logic/models/m_005_browse_category.dart';
import 'package:apple_music_clone/business_logic/models/m_006_search_response.dart';

abstract class WebApi {
  Future<List<M002RecentlyAdded>> fetchRecentlyAddedList();
  Future<List<M003HighlightRadio>> fetchHighlightRadioList();
  Future<List<M004Radio>> fetchRadioList();
  Future<List<M005BrowseCategory>> fetchBrowseCategoryList();
  Future<M006SearchResponse> fetchSearchResult(String keywords);
}