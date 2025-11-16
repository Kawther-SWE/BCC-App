import 'package:bbc/model/article/m_article_app.dart';
import 'package:bbc/views/web_view/v_webview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetCardArticle extends StatelessWidget {
  const WidgetCardArticle({super.key, required this.data});
  final ModelArticleApp data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.all(5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            offset: Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // route go to page
          MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => ViewWebView(url: data.url));
          Navigator.push(context, route);
        },
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
                  // date
                  Text(
                    data.date,
                    style: GoogleFonts.abel(color: Colors.grey, fontSize: 16),
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
    );
  }
}
