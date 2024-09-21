import 'package:flutter/material.dart';
import 'package:riverpod_todo/constants/color_const.dart';

class CustomTopDesign extends StatelessWidget {
  const CustomTopDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -70,
          left: -10,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ConstColors.greenColor.withOpacity(0.6),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: -80,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ConstColors.greenColor.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
