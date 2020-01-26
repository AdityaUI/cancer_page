import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../widgets/category_card.dart';
class TileSection extends StatefulWidget {
  @override
  _TileSectionState createState() => _TileSectionState();
}

class _TileSectionState extends State<TileSection> {
  int selectedCardIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildCategoryCard(0, CustomColors.orange, 'DONATE', 'goes directly to the people in need', context),
            _buildCategoryCard(1, CustomColors.red, 'Why Should I Donate?', '* Donating gives you the opportunity to show gratitude.                                   * There are financial benefits when you donate to charity.', context),
            _buildCategoryCard(
                2, CustomColors.blue, ' TOTAL DONATIONS ', '2018 -💲10,000.00                         2019 -💲18,000.00  ', context),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
      int index,
      Color color,
      String top,
      String bottom,
      BuildContext context,
      ) {
    return CategoryCard(
      index: index,
      selectedCardIndex: selectedCardIndex,
      color: color,
      top: top,
      bottom: bottom,
      onPressed: () => selectCategory(index),
    );
  }

  void selectCategory(int index) {
    setState(() {
      selectedCardIndex = index;
    });
  }
}