import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget iconMenu({
  required String imgPathSvg,
  required String title,
  required Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      width: 5,
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(imgPathSvg),
          ),
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
