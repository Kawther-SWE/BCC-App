import 'package:bbc/widgets/article/w_body_article.dart';
import 'package:bbc/widgets/favorite/w_body_favorite.dart';
import 'package:bbc/widgets/upload-article/w_body_upload_article.dart';
import 'package:bbc/widgets/video/w_body_video.dart';
import 'package:bbc/widgets/w_app_bar.dart';
import 'package:bbc/widgets/w_bottom_navigation.dart';
import 'package:flutter/material.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  /// [currentSelected] start choice navigation bar [news body]
  int currentSelected = 0;

  /// [controller] handle pagView
  PageController? controller;

  /// list widget
  List<Widget> bodyPageView = const [
    WidgetBodyArticle(),
    WidgetBodyVideo(),
    WidgetBodyFavorite(),
    WidgetBodyUploadArticle(),
  ];

  @override
  void initState() {
    super.initState();
    // show article body first open page
    controller = PageController(initialPage: currentSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: const WidgetAppBar(),
      // Drawer
      drawer: const Drawer(),
      // bottomNavigationBar
      bottomNavigationBar: WidgetBottomNavigation(
        currentSelected: currentSelected,
        controller: controller,
      ),
      // body
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: bodyPageView,
      ),
    );
  }
}
