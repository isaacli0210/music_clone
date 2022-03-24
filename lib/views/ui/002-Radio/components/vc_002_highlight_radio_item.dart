import 'package:apple_music_clone/views/ui/002-Radio/components/vc_002_schedule_button.dart';
import 'package:apple_music_clone/views/ui/002-Radio/icons/vi_002_icons.dart';
import 'package:apple_music_clone/views/ui/002-Radio/styles/vs_002_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VC002HighlightRadioItem extends StatelessWidget {

  final String header;
  final String subheader;
  final String startTime;
  final String endTime;
  final String radioTitle;
  final String radioDescription;
  final String imageURL;

  const VC002HighlightRadioItem({ 
    Key? key,
    required this.header,
    required this.subheader,
    required this.startTime,
    required this.endTime,
    required this.radioTitle,
    required this.radioDescription,
    required this.imageURL
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    headerIcon,
                    const SizedBox(width: 2.0),
                    Text(header, style: headerStyle)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                  child: Text(subheader, style: subHeaderStyle),
                ),
              ],
            ),
            const VC002ScheduleButton()
          ],
        ),
        Card(
          margin: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    height: 240,
                    fit: BoxFit.cover,
                    image: AssetImage(imageURL)
                  )
                ],
              ),
              Container(
                color: CupertinoTheme.of(context).barBackgroundColor.withOpacity(0.8),
                padding: const EdgeInsets.all(12.0),
                height: 100,
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('LIVE · $startTime – $endTime', style: timeStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(radioTitle, style: radioTitleStyle),
                          ),
                          Text(
                            radioDescription,
                            style: radioDescriptionStyle,
                            maxLines: 2,
                            softWrap: true,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: playIcon
                    )
                  ],
                ),
              )
            ],
          ),
        ),    
      ],
    );
  }
}