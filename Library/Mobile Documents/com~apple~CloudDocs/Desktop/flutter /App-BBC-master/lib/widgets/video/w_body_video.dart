import 'package:bbc/controllers/c_video.dart';
import 'package:bbc/widgets/video/w_card_video.dart';
import 'package:flutter/material.dart';

class WidgetBodyVideo extends StatelessWidget {
  const WidgetBodyVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerVideo().getLength(),
      itemBuilder: (BuildContext context, int index) {
        return WidgetCardVideo(
          data: ControllerVideo().getVideo(index),
        );
      },
    );
  }
}
