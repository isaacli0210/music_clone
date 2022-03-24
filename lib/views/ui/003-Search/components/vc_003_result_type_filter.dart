import 'package:apple_music_clone/business_logic/view_models/vm_006_result_type_tag.dart';
import 'package:apple_music_clone/views/ui/003-Search/components/vc_003_result_type_tag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VC003ResultTypeFilter extends StatelessWidget {
  const VC003ResultTypeFilter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 30,
        child: Selector<VM006ResultTypeTag, int>(
          selector: (_, viewModel) => viewModel.selectedIndex,
          builder: (context, selectedIndex, child) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 12.0),
              itemCount: context.read<VM006ResultTypeTag>().list.length,
              itemBuilder: (BuildContext context, int index) {
                return VC003ResultTypeTag(
                  title: context.read<VM006ResultTypeTag>().list[index], 
                  onPressed: () {
                    context.read<VM006ResultTypeTag>().selectedIndex = index;
                  },
                  isSelected: context.read<VM006ResultTypeTag>().selectedIndex == index
                );
              },
            );
          }
        ),
      ),
    );
  }
}