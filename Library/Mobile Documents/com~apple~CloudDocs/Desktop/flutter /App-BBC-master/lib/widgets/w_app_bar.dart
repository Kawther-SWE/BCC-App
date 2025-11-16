import 'package:bbc/constant/app_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(size: 35, color: Colors.white),
      title: Text(
        AppName.name,
        style: GoogleFonts.blackOpsOne(fontSize: 35),
      ),
      centerTitle: true,
      backgroundColor: Colors.purple,
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Badge(
            padding: EdgeInsets.all(2),
            label: Text(
              '10',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            largeSize: 20,
            child: Icon(CupertinoIcons.bell_solid),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
