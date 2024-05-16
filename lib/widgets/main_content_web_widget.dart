import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';
import 'package:flutter_portfolio/widgets/app_button_widget.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // title
          Text("سلام دوست من! من محمد دهقانی فرد هستم،",style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.02,fontWeight: FontWeight.w700,color: Theme.of(context).colorScheme.primaryContainer
          ),),
          Text("برنامه نویس فلاتر و اندروید.",style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.02,fontWeight: FontWeight.w700,color: Theme.of(context).colorScheme.primaryContainer
          ),),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          // content
          SizedBox(
            width:MediaQuery.sizeOf(context).width * 0.50,
            child: const Text("حرفه من طراحی اپلیکیشن شماست به گونه ای که علاوه بر امکانات فنی حرفه ای دارای یک ظاهر جذاب و کاربرپسند نیز باشد.من با بررسی نیازهای شما تلاش می کنم تا آنها را به شکل خیره کننده به کاربر ارائه دهم و هدف من ایجاد یک هویت بصری جذاب برای برند شما می باشد.در طول فعالیت چندین ساله با شرکت ها و برندهای معتبری همکاری داشتم"),
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


