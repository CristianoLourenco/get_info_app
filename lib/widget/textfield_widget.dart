import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.widthFactor = 0.70,
    required this.prefixIcon,
    required this.title,
  });

  final double widthFactor;
  final Icon prefixIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white),
      gapPadding: 100,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 50,
          child: FractionallySizedBox(
            widthFactor: widthFactor,
            child: TextField(
              maxLength: 20,
              
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: prefixIcon,
                enabledBorder: border,
                focusedBorder: border,
                border: border,
                counterText: '',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
