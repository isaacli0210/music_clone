import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class W004ItemCard extends StatelessWidget {

  final String title;
  final String subtitle;
  final String imageURL;

  const W004ItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageURL
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Flexible(
            flex: 3,
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageURL),
                )
              ),
            ),
          ),
          const SizedBox(height: 6.0),
          Flexible(
            child: ItemCardTitle(
              title: title, 
              subtitle: subtitle
            ),
          )
        ],
      )
    );
  }
}

class ItemCardTitle extends StatelessWidget {

  final String title;
  final String subtitle;

  const ItemCardTitle({ 
    Key? key,
    required this.title,
    required this.subtitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(text: title),
        TitleText(text: subtitle, isSubtitle: true)
      ],
    );
  }
}

class TitleText extends StatelessWidget {

  final String text;
  final bool isSubtitle;

  const TitleText({ 
    Key? key,
    required this.text,
    this.isSubtitle = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: TextStyle(
        fontSize: 14.0,
        color: isSubtitle ? CupertinoColors.systemGrey : Colors.white
      ),
    );
  }
}