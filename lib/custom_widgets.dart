import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class MyCard extends StatelessWidget {
  Widget? child;
  Color? color;
  Function? onPress;

  MyCard({this.child, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  IconData? icon;
  String? title;

  GenderCard({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 10),
        Text(
          title!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
