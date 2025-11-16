import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetBottomNavigation extends StatelessWidget {
  const WidgetBottomNavigation({
    super.key,
    required this.currentSelected,
    required this.controller,
  });

  final int currentSelected;
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      initialActiveIndex: currentSelected,
      backgroundColor: Colors.purple,
      style: TabStyle.flip,
      items: const [
        // index number 0
        TabItem(icon: Icons.article, title: 'Article'),
        // index number 1
        TabItem(
          icon: Icons.video_collection_rounded,
          title: 'video',
        ),
        // index number 2
        TabItem(
          icon: Icons.favorite_rounded,
          title: 'Favorites',
        ),
        // index number 3
        TabItem(
          icon: CupertinoIcons.cloud_upload_fill,
          title: 'Upload Article',
        ),
      ],
      onTap: (int index) {
        // null?.animateToPage()
        // null!.animateToPage()
        controller?.animateToPage(
          index,
          duration: const Duration(milliseconds: 400),
          curve: Curves.linear,
        );
      },
    );
  }
}
