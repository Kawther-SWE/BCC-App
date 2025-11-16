import 'package:bbc/constant/data_video.dart';
import 'package:bbc/model/video/m_video_app.dart';

class ControllerVideo {
  List<ModelVideoApp> dataVideo = [
    /// index 0
    ModelVideoApp(
      title: DataVideo.title1,
      image: DataVideo.image1,
      url: DataVideo.link1,
      source: DataVideo.source1,
      duration: DataVideo.duration1,
    ),

    /// index 1
    ModelVideoApp(
      title: DataVideo.title2,
      image: DataVideo.image2,
      url: DataVideo.link2,
      source: DataVideo.source2,
      duration: DataVideo.duration2,
    ),

    /// index 2
    ModelVideoApp(
      title: DataVideo.title3,
      image: DataVideo.image3,
      url: DataVideo.link3,
      source: DataVideo.source3,
      duration: DataVideo.duration3,
    ),

    /// index 3
    ModelVideoApp(
      title: DataVideo.title4,
      image: DataVideo.image4,
      url: DataVideo.link4,
      source: DataVideo.source4,
      duration: DataVideo.duration4,
    ),

    /// index 4
    ModelVideoApp(
      title: DataVideo.title5,
      image: DataVideo.image5,
      url: DataVideo.link5,
      source: DataVideo.source5,
      duration: DataVideo.duration5,
    ),
  ];

  /// [getLength] return count item in list
  int getLength() => dataVideo.length;

  /// [getVideo] return data video depend on index
  ModelVideoApp getVideo(int index) => dataVideo.elementAt(index);
}
