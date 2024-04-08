import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

Widget baseDateRangePicker({
  required String title,
  required String name,
  required DateTime firstDate,
  required DateTime lastDate,
  void Function(DateTimeRange?)? onDateChanged,
  String dateFormat = 'yyyy-MM-dd',
  Icon? prefixIcon,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        FormBuilderDateRangePicker(
          name: name,
          firstDate: firstDate,
          lastDate: lastDate,
          format: DateFormat(dateFormat),
          onChanged: onDateChanged,
          decoration: InputDecoration(
            labelText: title,
            prefixIcon: prefixIcon,
            contentPadding: const EdgeInsets.all(10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}
