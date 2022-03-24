import 'package:apple_music_clone/business_logic/view_models/vm_004_browse_category.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_005_search.dart';
import 'package:apple_music_clone/config/c_001_global_styles.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:apple_music_clone/views/ui//003-Search/components/vc_003_browse_category_grid.dart';
import 'package:apple_music_clone/views/ui/003-Search/v_003_b_recently_searched.dart';
import 'package:apple_music_clone/views/widgets/002-CupertinoDivider/w_002_cupertino_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class V003aSearch extends StatefulWidget {
  const V003aSearch({ Key? key }) : super(key: key);

  @override
  State<V003aSearch> createState() => _V003aSearchState();
}

class _V003aSearchState extends State<V003aSearch> {
  
  final VM004BrowseCategory _vm004browseCategory = serviceLocator<VM004BrowseCategory>();
  final VM005Search _vm005search = serviceLocator<VM005Search>();
  @override
  void initState() {
    super.initState();
    _vm004browseCategory.fetchBrowseCategoryList();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VM004BrowseCategory>(create: (context) => _vm004browseCategory),
        ChangeNotifierProvider<VM005Search>(create: (context) => _vm005search),
      ],
      child: CupertinoTabView(
        builder: (context) {
          return CupertinoPageScaffold(
            child: NestedScrollView(
              headerSliverBuilder: ((BuildContext context, innerBoxIsScrolled) {
                return  [
                  const CupertinoSliverNavigationBar(
                    backgroundColor: Colors.black,
                    largeTitle: Text('Search'),
                  ),
                ];
              }),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: globalHorizontalPadding),
                child: ListView(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    CupertinoSearchTextField(
                      
                      placeholder: 'Artists, Songs, Lyrics and More',
                      onTap: () {
                        Navigator.push(
                          context, 
                          CupertinoPageRoute(
                            builder: (context) => const V003bRecentlySearched()
                          )
                        );
                      }
                    ),
                    ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                          child: W002CupertinoDivider(),
                        ),
                        VC003BrowseCategoryGrid(),
                        SizedBox(height: 100.0)
                      ],
                    ),
                  ],
                ),
              ),
            )
          );
        }
      ),
    );
  }
}