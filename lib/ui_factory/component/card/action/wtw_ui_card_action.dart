import 'package:flutter/material.dart';
import '../wtw_ui_card.dart';

class WTWUICardAction extends WTWUICard {

  void setSizes() {
    double? w = width;
    double? h = height;

    if(w! > 1000) {
      width     = 90;
      height    = 90;
      iconSize  = 27;
      labelSize = 15;
    }
    if(w <= 1000) {
      width     = 80;
      height    = 80;
      iconSize  = 25;
      labelSize = 13;
    }
    if(w <= 800) { 
      width     = 60;
      height    = 60;
      iconSize  = 23;
      labelSize = 11;
    }

    if(label!.length > 10) { labelSize = labelSize! * 0.6; }
  }

  @override
  Widget? build() {
    setSizes();

    return GestureDetector(
      onTap: action,
      child: Container(
        margin: margin,
        padding: padding,
        width: width,
        //height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor!, width: 1.0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// icon
            icon != null 
              ? Icon(
                  icon, 
                  size: iconSize, 
                  color: iconColor
                ) 
              : SizedBox(),

            const SizedBox(height: 5),

            /// label
            label != null
              ? Text(
                  label!,
                  style: TextStyle(
                    color: labelColor,
                    fontSize: labelSize, 
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2, 
                  overflow: TextOverflow.ellipsis, 
                  softWrap: true,
                )
              : SizedBox(),

          ],
        ),
      ),
    );
  }

}