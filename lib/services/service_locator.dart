import 'package:apple_music_clone/business_logic/view_models/vm_001_recently_added.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_002_highlight_radio.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_003_radio.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_004_browse_category.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_005_search.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_006_result_type_tag.dart';
import 'package:apple_music_clone/services/WebAPI/web_api.dart';
import 'package:apple_music_clone/services/WebAPI/web_api_imple.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // Services
  serviceLocator.registerLazySingleton<WebApi>(() => WebApiImple());

  // View Models
  serviceLocator.registerFactory<VM001RecentlyAdded>(() => VM001RecentlyAdded());
  serviceLocator.registerFactory<VM002HighlightRadio>(() => VM002HighlightRadio());
  serviceLocator.registerFactory<VM003Radio>(() => VM003Radio());
  serviceLocator.registerFactory<VM004BrowseCategory>(() => VM004BrowseCategory());
  serviceLocator.registerFactory<VM005Search>(() => VM005Search());
  serviceLocator.registerFactory<VM006ResultTypeTag>(() => VM006ResultTypeTag());
}