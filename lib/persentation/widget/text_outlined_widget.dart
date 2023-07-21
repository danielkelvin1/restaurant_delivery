import "package:flutter/material.dart";
import "package:restaurant_delivery/theme.dart";

class TextOutlinedWidget extends StatelessWidget {
  const TextOutlinedWidget(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.obsecureText = false});
  final String hintText;
  final Widget? suffixIcon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        fillColor: activeColor5,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: activeColor4,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: activeColor4,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.w400),
        suffixIcon: suffixIcon,
      ),
      obscureText: obsecureText,
    );
  }
}
