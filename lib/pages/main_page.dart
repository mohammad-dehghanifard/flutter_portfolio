import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';
import 'package:flutter_portfolio/widgets/my_info_widget.dart';
import 'package:flutter_portfolio/widgets/web_navigation_item_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final webNavItem = [
      WebAppNavigationItem(text: "صفحه اصلی",onTap: () {}),
      WebAppNavigationItem(text: "نمونه کار ها",onTap: () {}),
      WebAppNavigationItem(text: "تعرفه همکاری",onTap: () {}),
      WebAppNavigationItem(text: "وبلاگ",onTap: () {}),
      WebAppNavigationItem(text: "نظرات مشتریان",onTap: () {}),
      WebAppNavigationItem(text: "تماس با من",onTap: () {}),
    ];
    return Responsive(
        desktop: Scaffold(
          drawer: Responsive.isMobile(context) ? const Drawer() : null,
          appBar: Responsive.isMobile(context) ? AppBar() : null,
          body: AnimatedPadding(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.01),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // web navigation
                    if(Responsive.isDesktop(context))
                      Row(
                        children: List.generate(webNavItem.length, (index) => WebAppNavigationItem(
                            text: webNavItem[index].text,
                            onTap: webNavItem[index].onTap)
                        ),
                      ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.065),
                    // main content
                    const MyInfoWidget()
                  ],
              ),
            ),
          ),
        )
    );
  }
}

