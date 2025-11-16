import 'package:bbc/controllers/c_article.dart';
import 'package:bbc/widgets/article/w_card_article.dart';
import 'package:flutter/material.dart';

class WidgetBodyArticle extends StatelessWidget {
  const WidgetBodyArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerArticle().getLength(),
      itemBuilder: (context, index) {
        return WidgetCardArticle(
          data: ControllerArticle().getArticle(index),
        );
      },
    );
  }
}
