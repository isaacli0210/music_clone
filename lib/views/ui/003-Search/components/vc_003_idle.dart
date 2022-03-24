import 'package:apple_music_clone/views/ui/003-Search/styles/vs_003_styles.dart';
import 'package:flutter/cupertino.dart';

class VC003Idle extends StatelessWidget {
  const VC003Idle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: CupertinoSlidingSegmentedControl(
          children: const {
            0: SegmentedControlItem(title: 'Apple Music'),
            1: SegmentedControlItem(title: 'Your Library')
          },
          groupValue: 0,
          thumbColor: CupertinoColors.systemGrey2,
          onValueChanged: (value) {}
        ),
      ),
    );
  }
}

class SegmentedControlItem extends StatelessWidget {

  final String title;

  const SegmentedControlItem({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: slidingSegmentedControlItemStyle
    );
  }
}