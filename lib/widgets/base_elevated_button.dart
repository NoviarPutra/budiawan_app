import 'package:flutter/material.dart';

Widget baseElevatedButton({
  required String title,
  required Function()? onTap,
  Color color = Colors.deepPurple,
  Color colorText = Colors.white,
}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: colorText,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
