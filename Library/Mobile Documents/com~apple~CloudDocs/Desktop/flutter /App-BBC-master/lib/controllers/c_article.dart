import 'package:bbc/constant/data_article.dart';
import 'package:bbc/model/article/m_article_app.dart';

class ControllerArticle {
  List<ModelArticleApp> dataArticle = [
    // index 0
    ModelArticleApp(
      image: DataArticle.image1,
      date: DataArticle.date1,
      title: DataArticle.title1,
      source: DataArticle.source1,
      url: DataArticle.link1,
    ),

    // index 1
    ModelArticleApp(
      title: DataArticle.title2,
      image: DataArticle.image2,
      url: DataArticle.link2,
      source: DataArticle.source2,
      date: DataArticle.date2,
    ),

    // index 2
    ModelArticleApp(
      title: DataArticle.title3,
      image: DataArticle.image3,
      url: DataArticle.link3,
      source: DataArticle.source3,
      date: DataArticle.date3,
    ),
    // index 3
    ModelArticleApp(
      title: DataArticle.title4,
      image: DataArticle.image4,
      url: DataArticle.link4,
      source: DataArticle.source4,
      date: DataArticle.date4,
    ),
    // index 4
    ModelArticleApp(
      title: DataArticle.title5,
      image: DataArticle.image5,
      url: DataArticle.link5,
      source: DataArticle.source5,
      date: DataArticle.date5,
    ),
    // index 5
    ModelArticleApp(
      title: DataArticle.title6,
      image: DataArticle.image6,
      url: DataArticle.link6,
      source: DataArticle.source6,
      date: DataArticle.date6,
    ),
    // index 6
    ModelArticleApp(
      title: DataArticle.title7,
      image: DataArticle.image7,
      url: DataArticle.link7,
      source: DataArticle.source7,
      date: DataArticle.date7,
    ),
  ];

  /// [getLength] return number item in list
  int getLength() => dataArticle.length;

  /// [getArticle] return dataArticle by index
  ModelArticleApp getArticle(int index) => dataArticle.elementAt(index);
}
