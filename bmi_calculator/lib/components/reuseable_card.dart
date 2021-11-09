import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Widget cardChild;
  final Color colour;

  final Function()? onTapFunc;

  const ReuseableCard({
    required this.colour,
    required this.cardChild,
    this.onTapFunc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunc,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
