import 'package:flutter/material.dart';
import 'constants.dart';

class MyCard extends StatelessWidget {
  Widget? child;
  Color? color;
  Function? onPress;

  MyCard({super.key, this.child, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        margin: const EdgeInsets.all(15),
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

  GenderCard({super.key, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(height: 10),
        Text(
          title!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.onTap, this.icon});

  final Function onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap as void Function()?,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: const CircleBorder(),
      fillColor: kInactiveCardColor,
      child: Icon(icon),
    );
  }
}
