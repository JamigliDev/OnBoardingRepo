import 'package:flutter/material.dart';

import '../utils/constans.dart';

class DotsIndicator extends StatelessWidget {
  final double size;
  final Color color;
  const DotsIndicator({Key? key, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
