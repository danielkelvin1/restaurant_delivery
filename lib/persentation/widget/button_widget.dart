import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.textstyle,
    required this.buttonCollor,
    required this.buttonText,
    required this.onPressed,
    this.icons,
  });
  final TextStyle? textstyle;
  final Color buttonCollor;
  final String buttonText;
  final Function() onPressed;
  final Widget? icons;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonCollor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onPressed,
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: Row(
              children: [
                SizedBox(
                  width: icons != null ? 16 : 0,
                ),
                icons != null ? icons! : const SizedBox(),
                SizedBox(
                  width: icons != null ? 30 : 0,
                ),
                Expanded(
                  child: Text(
                    buttonText,
                    style: textstyle,
                    textAlign:
                        icons != null ? TextAlign.start : TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // ElevatedButton(
    //   onPressed: onPressed,

    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: buttonCollor,
    //     minimumSize: const Size.fromHeight(48),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //   ),
    //   child:
    //    Text(
    //     buttonText,
    //     style: textstyle,
    //   ),
    // );
  }
}
