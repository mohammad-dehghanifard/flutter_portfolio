import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';
import 'package:flutter_portfolio/widgets/app_button_widget.dart';

class MyInfoWidget extends StatelessWidget {
  const MyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final List<Widget> content = [
      AnimatedPadding(
        duration: const Duration(milliseconds: 500),
        padding: EdgeInsets.only(
            bottom: Responsive.isMobile(context) ? MediaQuery.sizeOf(context).height * 0.02 : 0,
            left: Responsive.isDesktop(context) ? MediaQuery.sizeOf(context).width * 0.02 : 0
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: Responsive.isMobile(context)
              ?MediaQuery.sizeOf(context).height * 0.25
              :MediaQuery.sizeOf(context).width * 0.25,
          height: Responsive.isMobile(context)
              ?MediaQuery.sizeOf(context).height * 0.25
              :MediaQuery.sizeOf(context).width * 0.25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primaryContainer,
            image: const DecorationImage(
                image: AssetImage("assets/images/avatar.jpg"),
                fit: BoxFit.cover
            ),

          ),
        ),
      ),

      Column(
        crossAxisAlignment: Responsive.isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // title
          Text("سلام دوست من! من محمد دهقانی فرد هستم،",style: textTheme.titleLarge),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          Text("برنامه نویس فلاتر و اندروید.",style:  textTheme.titleLarge),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          // content
          SizedBox(
            width: Responsive.isMobile(context)? double.infinity :MediaQuery.sizeOf(context).width * 0.50,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 25 : 0),
              child: const Text(
                  textAlign: TextAlign.justify,
                  "حرفه من طراحی اپلیکیشن شماست به گونه ای که علاوه بر امکانات فنی حرفه ای دارای یک ظاهر جذاب و کاربرپسند نیز باشد.من با بررسی نیازهای شما تلاش می کنم تا آنها را به شکل خیره کننده به کاربر ارائه دهم و هدف من ایجاد یک هویت بصری جذاب برای برند شما می باشد.در طول فعالیت چندین ساله با شرکت ها و برندهای معتبری همکاری داشتم"),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButtonWidget(text: "دانلود رزومه",onTap: () {}),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
              AppButtonWidget(text: "سفارش پروژه",onTap: () {})
            ],
          )
        ],
      ),
    ];
    return Responsive(
      desktop: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: content,),
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: content,
      ),
      tablet: Column(
        children: content,
      ),
    );
  }
}


