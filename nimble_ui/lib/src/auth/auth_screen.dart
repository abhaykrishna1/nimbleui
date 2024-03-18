import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/auth/view/create_your_account_screen.dart';
import 'package:nimple_ui/src/auth/view/expertise_screen.dart';
import 'package:nimple_ui/src/auth/view/service_type_screen.dart';
import 'package:nimple_ui/src/auth/view/welcome_screen.dart';
import 'package:nimple_ui/widget/skip_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  PageController controller = PageController(initialPage: 0);

  double initialIndicator = 20.w;

  int indexValue = 1;

  @override
  void initState() {
    super.initState();
  }

  var size = Tween<double>(begin: 0, end: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: initialIndicator == 20.w
          ? AppBar()
          : AppBar(
              leading: GestureDetector(
                  onTap: () {
                    controller.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              title: Row(
                children: [
                  50.horizontalSpace,
                  Container(
                    height: 5.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear,
                            height: 5.h,
                            width: initialIndicator,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)))
                      ],
                    ),
                  ),
                  7.horizontalSpace,
                  Text(
                    "$indexValue/4",
                    style: TextStyle(color: Colors.black, fontSize: 13.sp),
                  )
                ],
              ),
              actions: initialIndicator == 80.w || initialIndicator == 40.w
                  ? [
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: SizedBox(
                          height: 31.h,
                          width: 53.w,
                          child: const Center(
                            child: Text(
                              "",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ]
                  : [
                      SkipButton(
                        onpressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
            ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (index) {
          debugPrint("pageindex is : $index");
          indexValue = index + 1;
          if (index == 0) {
            initialIndicator = 20.w;
          } else if (index == 1) {
            initialIndicator = 40.w;
          } else if (index == 2) {
            initialIndicator = 60.w;
          } else if (index == 3) {
            initialIndicator = 80.w;
          }
          setState(() {});
        },
        children: [
          WelcomeScreen(
            controller: controller,
          ),
          ServiceTypeScreen(
            controller: controller,
          ),
          ExpertiseScreen(
            controller: controller,
          ),
          CreateYourAccountScreen(
            controller: controller,
          )
        ],
      ),
    );
  }
}
