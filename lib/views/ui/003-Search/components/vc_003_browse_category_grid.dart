import 'package:apple_music_clone/business_logic/view_models/vm_004_browse_category.dart';
import 'package:apple_music_clone/views/ui/003-Search/styles/vs_003_styles.dart';
import 'package:apple_music_clone/views/ui/003-Search/components/vc_003_browse_category_grid_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class VC003BrowseCategoryGrid extends StatelessWidget {
  const VC003BrowseCategoryGrid({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Browse Categories', style: headerStyle)
        ),
        Selector<VM004BrowseCategory, bool>(
          selector: (_, viewModel) => viewModel.isLoading,
          builder: (context, isLoading, child) {
            return GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10.0,
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.5
              ),
              itemCount: context.read<VM004BrowseCategory>().list.length,
              itemBuilder: (BuildContext context, int index) {
                if (isLoading) {
                  return const Center(child: CupertinoActivityIndicator());
                } else {
                  return VC003BrowseCategoryGridItem(
                    imageURL: context.read<VM004BrowseCategory>().list[index].imageURL, 
                    title: context.read<VM004BrowseCategory>().list[index].title
                  );
                }
              },
            );
          }
        ),
      ],
    );
  }
}