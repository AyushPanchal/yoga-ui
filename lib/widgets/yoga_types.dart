import 'package:flutter/material.dart';

class YogaType extends StatelessWidget {
  final String yogaName;
  final bool isSelected;
  const YogaType({Key? key, required this.yogaName, this.isSelected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        yogaName,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
