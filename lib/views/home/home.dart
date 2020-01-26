import 'package:flutter/material.dart';
import 'widgets/tile_section.dart';
import '../../widgets/media_section.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/header.dart';

class HomePage extends StatelessWidget {
  final List<String> _photos = [

  ];

  final List<String> _videos = [

  ];

  @override
  Widget build(BuildContext context) {
    final _headerText = Header(isHome: true);


    final _tileSection = TileSection();



    final _videosSection =
    MediaSection(title: "", media: _videos, isPhoto: false);

    return Scaffold(
      appBar: CustomAppBar(isHome: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: EdgeInsets.only(top: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _headerText,
                _tileSection,
                _videosSection
              ],
            ),
          ),
        ),
      ),
    );
  }
}
