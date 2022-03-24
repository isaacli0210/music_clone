import 'package:apple_music_clone/business_logic/view_models/vm_005_search.dart';
import 'package:apple_music_clone/views/ui/003-Search/icons/vi_003_icons.dart';
import 'package:apple_music_clone/views/ui/003-Search/styles/vs_003_styles.dart';
import 'package:apple_music_clone/views/widgets/002-CupertinoDivider/w_002_cupertino_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VC003ResultList extends StatelessWidget {
  const VC003ResultList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) => const W002CupertinoDivider(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(context.read<VM005Search>().m006searchResponse.result[index].artworkURL100),
                          )
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20.0),
                          Text(
                            context.read<VM005Search>().m006searchResponse.result[index].artistName,
                            style: searchResultTitleStyle
                          ),
                          Text(
                            context.read<VM005Search>().m006searchResponse.result[index].trackName,
                            style: searchResultSubtitleStyle
                          )
                        ],
                      ),
                    ],
                  ),
                  arrowIcon
                ],
              ),
            ),
          ); 
        }
      )
    );
  }
}