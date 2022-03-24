import 'package:apple_music_clone/business_logic/models/m_001_library_category.dart';
import 'package:apple_music_clone/views/widgets/001-CupertinoListTile/w_001_cupertino_listtile.dart';
import 'package:apple_music_clone/views/widgets/002-CupertinoDivider/w_002_cupertino_divider.dart';
import 'package:flutter/material.dart';

class VC001Catergory extends StatelessWidget {
  
  final M001LibraryCategory category = M001LibraryCategory();

  VC001Catergory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: category.data.length + 2,  // Add 2 to the item count to make dividers appear before the first element and after the last element. 
        separatorBuilder: (BuildContext context, int index) => const W002CupertinoDivider(),
        itemBuilder: (BuildContext context, int index) {
          // Add 2 Container() before the first element and after the last element
          // in order to show a divider.
          if (index == 0 || index == category.data.length + 1) {
            return Container();
          }
          return W001CupertinoListTile(
            leading: category.data.values.elementAt(index - 1), 
            title: category.data.keys.elementAt(index - 1)
          );
        },
      ),
    );
  }
}