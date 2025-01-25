import 'package:easy_rest/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  });

  final String hintText;
  final IconData icon;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        SizeConfig.width! * 0.04,
      ),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          labelText: hintText,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
