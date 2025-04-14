import 'package:flutter/material.dart';

class Authpgsbuttons extends StatelessWidget {
  final String buttonname;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  const Authpgsbuttons(
      {super.key, required this.buttonname, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(Colors.teal.withOpacity(0.65)),
      ),
      onPressed: onPressed,
      child: Text(
        buttonname,
        style: const TextStyle(
            color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w500),
      ),
    );
  }
}
