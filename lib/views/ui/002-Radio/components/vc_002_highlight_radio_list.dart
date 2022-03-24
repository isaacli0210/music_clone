import 'package:apple_music_clone/business_logic/view_models/vm_002_highlight_radio.dart';
import 'package:apple_music_clone/views/ui/002-Radio/components/vc_002_highlight_radio_item.dart';
import 'package:apple_music_clone/views/widgets/002-CupertinoDivider/w_002_cupertino_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class VC002HighlightRadioList extends StatelessWidget {
  const VC002HighlightRadioList({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Selector<VM002HighlightRadio, bool>(
        selector: (_, viewModel) => viewModel.isLoading,
        builder: (context, isLoading, child) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: context.read<VM002HighlightRadio>().list.length + 2,
            separatorBuilder: (BuildContext context, int index) => const W002CupertinoDivider(),
            itemBuilder: (BuildContext context, int index) {
              if (isLoading) {
                return const Center(child: CupertinoActivityIndicator());
              } else {
                if (index == 0 || index == context.read<VM002HighlightRadio>().list.length + 1) {
                  return Container();
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                  child: VC002HighlightRadioItem(
                    header: context.read<VM002HighlightRadio>().list[index-1].header,
                    subheader: context.read<VM002HighlightRadio>().list[index-1].subheader,
                    startTime: context.read<VM002HighlightRadio>().list[index-1].startTime,
                    endTime: context.read<VM002HighlightRadio>().list[index-1].endTime,
                    radioTitle: context.read<VM002HighlightRadio>().list[index-1].radioTitle,
                    radioDescription: context.read<VM002HighlightRadio>().list[index-1].radioDescription,
                    imageURL: context.read<VM002HighlightRadio>().list[index-1].imageURL,
                  ),
                );
              }
            },  
          );
        },
      )
    );
  }
}