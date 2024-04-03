import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  Widget? child;

  MyCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
