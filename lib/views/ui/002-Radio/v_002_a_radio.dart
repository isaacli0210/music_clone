import 'package:apple_music_clone/business_logic/view_models/vm_002_highlight_radio.dart';
import 'package:apple_music_clone/business_logic/view_models/vm_003_radio.dart';
import 'package:apple_music_clone/config/c_001_global_styles.dart';
import 'package:apple_music_clone/services/service_locator.dart';
import 'package:apple_music_clone/views/ui//002-Radio/components/vc_002_highlight_radio_list.dart';
import 'package:apple_music_clone/views/ui//002-Radio/components/vc_002_radio_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class V002aRadio extends StatefulWidget {
  const V002aRadio({ Key? key }) : super(key: key);

  @override
  State<V002aRadio> createState() => _V002aRadioState();
}

class _V002aRadioState extends State<V002aRadio> {

  final VM002HighlightRadio _vm002highlightRadio = serviceLocator<VM002HighlightRadio>();
  final VM003Radio _vm003radio = serviceLocator<VM003Radio>();

  @override
  void initState() {
    super.initState();
    _vm002highlightRadio.fetchHighlightRadioList();
    _vm003radio.fetchRadioList();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VM002HighlightRadio>(create: (context) => _vm002highlightRadio),
        ChangeNotifierProvider<VM003Radio>(create: (context) => _vm003radio),
      ],
      child: CupertinoTabView(
        builder: (context) {
          return CupertinoPageScaffold(
            child: NestedScrollView(
              headerSliverBuilder: ((BuildContext context, innerBoxIsScrolled) {
                return const [
                  CupertinoSliverNavigationBar(
                    backgroundColor: Colors.black,
                    largeTitle: Text('Radio'),
                  )
                ];
              }),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: globalHorizontalPadding),
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: const [
                    VC002HighlightRadioList(),
                    VC002RadioList(),
                    SizedBox(height: 100.0)
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

