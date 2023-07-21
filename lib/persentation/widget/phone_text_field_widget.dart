import 'package:flutter/material.dart';
import 'package:restaurant_delivery/main.dart';

class PhoneTextFieldWidget extends StatefulWidget {
  const PhoneTextFieldWidget({super.key});

  @override
  State<PhoneTextFieldWidget> createState() => _PhoneTextFieldWidgetState();
}

class _PhoneTextFieldWidgetState extends State<PhoneTextFieldWidget> {
  List<String> list = ['+1', '+62', '+45', '+32'];
  String selectItems = '+62';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PHONE NUMBER',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(letterSpacing: 0.8),
        ),
        Row(
          children: [
            DropdownButton(
              value: selectItems,
              items: list
                  .mapIndexed(
                      (e, i) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {},
            )
          ],
        )
      ],
    );
  }
}
