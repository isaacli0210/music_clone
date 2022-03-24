import 'package:apple_music_clone/views/ui/003-Search/styles/vs_003_styles.dart';
import 'package:flutter/material.dart';

class VC003ResultTypeTag extends StatelessWidget {
  
  final String title;
  final bool isSelected;
  final Function() onPressed;
  
  const VC003ResultTypeTag({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: (isSelected) ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(100.0)
        ),
        child: Center(
          child: Text(title, style: resultTypeTagStyle),
        ),
      ),
      onTap: onPressed
    );
  }
}