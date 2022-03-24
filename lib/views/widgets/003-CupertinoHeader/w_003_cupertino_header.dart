import 'package:apple_music_clone/config/c_001_global_styles.dart';
import 'package:flutter/material.dart';

class W003CupertinoHeader extends StatelessWidget {
  
  final String title;

  const W003CupertinoHeader({ 
    Key? key,
    required this.title

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: globalHeaderStyle,
    );
  }
}