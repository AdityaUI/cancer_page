import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CategoryCard extends StatefulWidget {
  final int index;
  final int selectedCardIndex;
  final Color color;
  final String top;
  final String bottom;
  final Function onPressed;

  const CategoryCard(
      {Key key,
      @required this.index,
      @required this.selectedCardIndex,
      @required this.color,
      @required this.top,
      @required this.bottom,
      @required this.onPressed})
      : super(key: key);
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final BorderRadius br = BorderRadius.circular(24.0);

    final bool isSelected =
        widget.index == widget.selectedCardIndex ? true : false;

    final TextStyle topTextStyle = TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w700,
      color: isSelected ? Colors.white : widget.color,
    );

    final TextStyle bottomTextStyle = TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      color: isSelected ? Colors.white : Colors.white,
    );

    return Material(
      elevation: isSelected ? 5.0 : 3.0,
      borderRadius: br,
      child: AnimatedContainer(
        width: screenWidth * 0.9,
        height: screenWidth * 0.42,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: br,
          color: switchColor(widget.index, widget.color),
        ),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: br),
          onPressed: widget.onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.top,
                style: topTextStyle,
              ),
              Text(
                widget.bottom,
                style: bottomTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }

  Color switchColor(int index, Color color) {
    if (widget.selectedCardIndex == index) {
      return color;
    } else {
      return CustomColors.unselectedCardColor;
    }
  }
}
