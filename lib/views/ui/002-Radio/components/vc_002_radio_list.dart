import 'package:apple_music_clone/business_logic/view_models/vm_003_radio.dart';
import 'package:apple_music_clone/views/widgets/003-CupertinoHeader/w_003_cupertino_header.dart';
import 'package:apple_music_clone/views/widgets/004-ItemCard/w_004_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class VC002RadioList extends StatelessWidget {
  const VC002RadioList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: const W003CupertinoHeader(title: 'Recently Played')
        ),
        SizedBox(
          height: 200,
          child: Selector<VM003Radio, bool>(
            selector: (_, viewModel) => viewModel.isLoading,
            builder: (context, isLoading, child) {
              return ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: context.read<VM003Radio>().list.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12.0),
                itemBuilder: (BuildContext context, int index) {
                  if (isLoading) {
                    return const Center(child: CupertinoActivityIndicator());
                  } else {
                    return W004ItemCard(
                      title: context.read<VM003Radio>().list[index].radioTitle, 
                      subtitle: context.read<VM003Radio>().list[index].radioDescription, 
                      imageURL: context.read<VM003Radio>().list[index].imageURL
                    );
                  }
                }
              );
            }
          ),
        )
      ],
    );
  }
}