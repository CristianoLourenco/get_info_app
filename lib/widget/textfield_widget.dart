import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.widthFactor = 0.70,
    this.prefixIcon,
    this.title,
    this.textAlign = TextAlign.start,
    this.hintText,
    this.controller,
    this.validator,
    this.inputFormatters,
  });

  final double widthFactor;
  final Icon? prefixIcon;
  final String? title, hintText;
  final TextAlign textAlign;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 5),
        FractionallySizedBox(
          widthFactor: widthFactor,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            elevation: 4,
            child: TextFormField(
              maxLength: 20,
              textAlign: textAlign,
              validator: validator,
              controller: controller,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                hintText: hintText,
                counterText: '',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
