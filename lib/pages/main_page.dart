import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        desktop: Scaffold(
          body: Column(

          ),
        )
    );
  }
}
