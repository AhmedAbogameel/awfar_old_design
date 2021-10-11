import 'package:awfar/widgets/logo.dart';
import 'package:awfar/widgets/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class AppInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo(withShape: true),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TitleText('Title'),
                Html(data: ' <p>This is a paragraph.</p><p>This is another paragraph.</p> '),
              ],
            ),
          )
        ],
      ),
    );
  }
}
