import 'package:apple_music_clone/views/ui/003-Search/styles/vs_003_styles.dart';
import 'package:flutter/material.dart';

class VC003BrowseCategoryGridItem extends StatelessWidget {
  
  final String imageURL;
  final String title;
  
  const VC003BrowseCategoryGridItem({
    Key? key,
    required this.imageURL,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.bottomLeft,
        children: [
          Ink.image(
            height: 120,
            fit: BoxFit.cover,
            image: AssetImage(imageURL)
          ),
           Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
            child: Text(title, style: gridItemStyle),
          )
        ],
      ),
    );
  }
}