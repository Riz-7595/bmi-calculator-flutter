import 'package:flutter/material.dart';
import 'constants.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.child, this.color, this.onPress});

  final Widget? child;
  final Color? color;
  final Function? onPress;

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
  const GenderCard({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

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
          title,
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
      constraints: const BoxConstraints.tightFor(width: 48, height: 48),
      shape: const CircleBorder(),
      fillColor: kInactiveCardColor,
      child: Icon(icon),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.text, required this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        height: 80,
        margin: const EdgeInsets.only(top: 15),
        color: kSecondaryColor,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
