import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Widget baseInputText({
  required String label,
  required String name,
  String? hintText,
  String? counterText,
  TextStyle? counterStyle,
  String? helperText,
  TextStyle? helperStyle,
  Icon? prefixIcon,
  IconButton? suffixIcon,
  List<TextInputFormatter>? inputFormatters,
  TextInputType? keyboardType,
  TextEditingController? controller,
  bool obscureText = false,
  String? Function(String?)? validator,
  String? Function(String?)? onChanged,
  void Function(String?)? onFieldSubmitted,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        FormBuilderTextField(
          name: name,
          decoration: InputDecoration(
            labelText: label,
            hintText: hintText,
            counterText: counterText,
            counterStyle: counterStyle,
            helperText: helperText,
            helperStyle: helperStyle,
            contentPadding: const EdgeInsets.all(10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
          controller: controller,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keyboardType,
          onChanged: onChanged,
          onSubmitted: onFieldSubmitted,
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}
