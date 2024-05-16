import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';
import 'package:flutter_portfolio/widgets/my_info_widget.dart';
import 'package:flutter_portfolio/widgets/skill_item_widget.dart';
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
    final skills = [
      const SkillItem(text: "Flutter", imagePath: "assets/images/flutter.png"),
      const SkillItem(text: "Dart", imagePath: "assets/images/dart-logo.png"),
      const SkillItem(text: "Kotlin", imagePath: "assets/images/Kotlin.png"),
      const SkillItem(text: "Laravel", imagePath: "assets/images/laravel.png"),
      const SkillItem(text: "Python", imagePath: "assets/images/python.png"),
      const SkillItem(text: "Unity", imagePath: "assets/images/unity.webp"),
    ];
    return Responsive(
        desktop: Scaffold(
          drawer: Responsive.isMobile(context) ? const Drawer() : null,
          appBar: Responsive.isMobile(context) ? AppBar() : null,
          body: SingleChildScrollView(
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 500),
              padding: const EdgeInsets.all(25),
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
                    const MyInfoWidget(),
                    // my Skills
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.065),
                    Center(child: Text("مهارت های من",style: Theme.of(context).textTheme.titleLarge)),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),
                   GridView.builder(
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,
                          childAspectRatio: Responsive.isDesktop(context)? 4 : 1.1
                       ),
                       itemCount: skills.length,
                       shrinkWrap: true,
                       itemBuilder: (context, index) {
                         return SkillItem(
                             text: skills[index].text,
                             imagePath: skills[index].imagePath);
                       },)

                  ],
              ),
            ),
          ),
        )
    );
  }
}

