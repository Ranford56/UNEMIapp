import 'package:flutter/material.dart';
import 'package:unemi/utils/const.dart';

class CornerButtons extends StatelessWidget {
  final Icon icon;

  const CornerButtons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_GREY.withAlpha(60), width: 1)
      ),
      child: InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: icon
      ),

      ),
    );
  }
}

class BrightnessButton extends StatelessWidget {
  final Icon icon;

  const BrightnessButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_GREY.withAlpha(60), width: 1)
      ),
      child: InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: () {
        
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: icon
      ),

      ),
    );
  }
}