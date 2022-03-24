import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class W001CupertinoListTile extends StatelessWidget {

  final IconData leading;
  final String title;

  const W001CupertinoListTile({
    Key? key,
    required this.leading,
    required this.title,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  leading,
                  size: 28.0,
                ),
                const SizedBox(width: 20.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19.0
                  ),
                ),
              ],
            ),
            const Icon(
              CupertinoIcons.right_chevron, 
              color: CupertinoColors.systemGrey,
              size: 16.0,
            )
          ],
        ),
      ),
    );
  }
}