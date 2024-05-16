import 'package:flutter/material.dart';

class WebAppNavigationItem extends StatelessWidget {
  const WebAppNavigationItem({
    super.key, required this.text, required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return TextButton(
        onPressed: onTap,
        child: Text(text,style: TextStyle(color: colorScheme.primaryContainer,),
        ));
  }
}
