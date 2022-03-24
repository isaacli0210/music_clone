import 'package:apple_music_clone/business_logic/view_models/vm_001_recently_added.dart';
import 'package:apple_music_clone/config/c_001_global_styles.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:apple_music_clone/views/ui//001-Library/components/vc_001_catergory_list.dart';
import 'package:apple_music_clone/views/ui//001-Library/components/vc_001_recently_added_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class V001aLibrary extends StatefulWidget {
  const V001aLibrary({ Key? key }) : super(key: key);

  @override
  State<V001aLibrary> createState() => _V001aLibraryState();
}

class _V001aLibraryState extends State<V001aLibrary> {

  final VM001RecentlyAdded _vm001recentlyAdded = serviceLocator<VM001RecentlyAdded>();

  @override
  void initState() {
    super.initState();
    _vm001recentlyAdded.fetchRecentlyAddedList();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VM001RecentlyAdded>(create: (context) => _vm001recentlyAdded),
      ],
      child: CupertinoTabView(
        builder: (context) {
          return CupertinoPageScaffold(
          child: NestedScrollView(
            headerSliverBuilder: ((BuildContext context, innerBoxIsScrolled) {
              return [
                CupertinoSliverNavigationBar(
                  backgroundColor: Colors.black,
                  largeTitle: const Text('Library'),
                  trailing: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: const Text('Edit'), 
                    onPressed: () {}
                  ),
                )
              ];
    
            }),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: globalHorizontalPadding),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  VC001Catergory(),
                  const VC001RecentlyAddedGrid(),
                  const SizedBox(height: 100.0)
                ],
              ),
            ),
          ),
        );
        }
      ),
    );
  }
}