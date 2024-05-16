import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.text, required this.imagePath});
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: Responsive.isMobile(context)? size.height * 0.04 : size.width * 0.04,
          ),
          SizedBox(height: size.height * 0.02,),
          Text(text),
        ],
      ),
    );
  }
}
