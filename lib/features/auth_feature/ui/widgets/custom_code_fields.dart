import 'package:easy_rest/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomCodeField extends StatelessWidget {
  const CustomCodeField({super.key, required this.onChanged});

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 8,
      width: SizeConfig.defaultSize! * 6,
      child: Card(
        child: TextField(
          onChanged: onChanged,
          cursorWidth: 2,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize! * 2,
              vertical: SizeConfig.defaultSize! * 2.5,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
