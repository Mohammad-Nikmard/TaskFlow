import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_todo/constants/color_const.dart';
import 'package:riverpod_todo/util/string_extension.dart';

class CustomTopDesign extends StatelessWidget {
  const CustomTopDesign({
    super.key,
    required this.showBackIcon,
  });
  final bool showBackIcon;

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
        Positioned(
          left: 20,
          top: 90,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Visibility(
              visible: showBackIcon,
              child: SvgPicture.asset(
                'icon_arrow_back'.toSVG,
                height: 26,
                width: 26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
