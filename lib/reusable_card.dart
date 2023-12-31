import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild, this.onPress});
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color, //Color(0xFF1D1E33)
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
