import 'package:apple_music_clone/business_logic/view_models/vm_001_recently_added.dart';
import 'package:apple_music_clone/views/widgets/003-CupertinoHeader/w_003_cupertino_header.dart';
import 'package:apple_music_clone/views/widgets/004-ItemCard/w_004_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class VC001RecentlyAddedGrid extends StatelessWidget {

  const VC001RecentlyAddedGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: const W003CupertinoHeader(title: 'Recently Added')
        ),
        Selector<VM001RecentlyAdded, bool>(
          selector: (_, viewModel) => viewModel.isLoading,
          builder: (context, isLoading, child) {
            if (isLoading) {
              return const Center(child: CupertinoActivityIndicator());
            } else {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 0.75
                ),
                itemCount: context.read<VM001RecentlyAdded>().list.length,
                itemBuilder: (BuildContext context, int index) {
                  return W004ItemCard(
                    title: context.read<VM001RecentlyAdded>().list[index].title, 
                    subtitle: context.read<VM001RecentlyAdded>().list[index].subtitle, 
                    imageURL: context.read<VM001RecentlyAdded>().list[index].imageURL
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }
}