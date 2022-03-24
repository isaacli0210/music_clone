import 'package:apple_music_clone/business_logic/view_models/vm_005_search.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_006_result_type_tag.dart';
import 'package:apple_music_clone/config/c_001_global_styles.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:apple_music_clone/views/ui/003-Search/components/vc_003_cancel_search_button.dart';
import 'package:apple_music_clone/views/ui/003-Search/components/vc_003_idle.dart';
import 'package:apple_music_clone/views/ui/003-Search/components/vc_003_result_list.dart';
import 'package:apple_music_clone/views/ui/003-Search/components/vc_003_result_type_filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class V003bRecentlySearched extends StatefulWidget {
  const V003bRecentlySearched({ Key? key }) : super(key: key);

  @override
  State<V003bRecentlySearched> createState() => _V003bRecentlySearchedState();
}

class _V003bRecentlySearchedState extends State<V003bRecentlySearched> {
  @override
  Widget build(BuildContext context) {

    
    final VM006ResultTypeTag _vm006ResultTypeTag = serviceLocator<VM006ResultTypeTag>(); 

    TextEditingController _searchController = TextEditingController();

    return MultiProvider(
      providers: [
        
        ChangeNotifierProvider<VM006ResultTypeTag>(create: (context) => _vm006ResultTypeTag),
      ],
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: false,
          middle: CupertinoSearchTextField(
            placeholder: 'Artists, Songs, Lyrics and More',
            controller: _searchController,
            onSubmitted: (value) async {
              await context.read<VM005Search>().fetchSearchResult(value);
            },
          ),
          trailing: const VC003CancelSearchButton()
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: globalHorizontalPadding),
          child: Selector<VM005Search, bool>(
            selector: (_, viewModel) => viewModel.isIdle,
            builder: (context, isIdle, child) {
              if (isIdle) {
                return ListView(
                  children: const [
                    VC003Idle(),
                    SizedBox(height: 100.0)
                  ],
                );
              } else {
                return ListView(
                  children: const [
                    VC003ResultTypeFilter(),
                    VC003ResultList(),
                  ],
                );
              }
            }
          )
        ),
      )
    );
  }
}