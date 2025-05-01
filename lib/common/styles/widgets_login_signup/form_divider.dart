import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({super.key, required this.dividerText});
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
            child: Divider(
          color: Color.fromARGB(255, 0, 0, 0),
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(dividerText),
        const Flexible(
            child: Divider(
          color: Color.fromARGB(255, 0, 0, 0),
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}
