import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key, required this.text, required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primaryContainer),
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width * 0.006)
                )
            )
        ),
        onPressed: onTap,
        child: Text(text,style: const TextStyle(color: Colors.white),));
  }
}