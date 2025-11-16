import 'package:bbc/constant/data_video.dart';
import 'package:bbc/model/video/m_video_app.dart';
import 'package:bbc/views/web_view/v_webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetCardVideo extends StatelessWidget {
  const WidgetCardVideo({super.key, required this.data});
  final ModelVideoApp data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          // route go to page
          MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => ViewWebView(url: data.url));
          Navigator.push(context, route);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              // image
              Expanded(
                child: Image.network(
                  data.image,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              // space
              const SizedBox(width: 4),
              // title & date & source
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // duration
                    Row(
                      children: [
                        // Time Video
                        const Icon(CupertinoIcons.video_camera,
                            color: Colors.grey),
                        // space
                        const SizedBox(width: 4),
                        // time text
                        Text(
                          data.duration,
                          style: GoogleFonts.abel(
                              color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),

                    // title
                    Text(
                      data.title,
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // source
                    Text(
                      data.source,
                      style: GoogleFonts.abel(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
