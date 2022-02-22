import 'package:flutter/material.dart';
class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.colour, this.cardChild,  this.onPress});
  final Color? colour;
  final Widget? cardChild;
  final Function? onPress;
  void onPressAction() {
    onPress!();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressAction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}