import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.widthFactor = 0.70,
    required this.prefixIcon,
  });

  final double widthFactor;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white),
      gapPadding: 100,
    );

    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
          enabledBorder: border,
          focusedBorder: border,
          border: border,
        ),
      ),
    );
  }
}
