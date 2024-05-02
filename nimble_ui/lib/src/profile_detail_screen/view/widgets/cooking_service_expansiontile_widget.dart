import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../generate/assets.dart';

class CookingServiceExpansiontileWidget extends StatelessWidget {
  CookingServiceExpansiontileWidget({super.key});
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ListTileTheme(
        contentPadding: const EdgeInsets.all(0),
        child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            title: Row(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemSize: 22.h,
                  itemBuilder: (context, _) => SizedBox(
                      height: 15,
                      width: 15,
                      child: SvgPicture.asset(
                        Assets.staricon,
                      )),
                  onRatingUpdate: (rating) {},
                ),
                10.horizontalSpace,
                Text("3.0",
                    style: TextStyle(
                        fontSize: 22.sp, fontWeight: FontWeight.w500)),
                Text(
                  "/5 rating",
                  style: FontPalette.black_14_400.copyWith(fontSize: 16.sp),
                )
              ],
            ),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            expandedAlignment: Alignment.centerLeft,
            children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 96.h,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 96.h,
                              width: 96.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://bfoodale.com/uploads/2021/12/Biryani.jpg"))),
                            ),
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox();
                        },
                        itemCount: 10),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 200.h,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: 5,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 47.h,
                                      width: 47.w,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey),
                                    ),
                                    10.horizontalSpace,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "John King",
                                          style: FontPalette.black_14_600
                                              .copyWith(fontSize: 16.sp),
                                        ),
                                        Text("3 days ago",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                                color: HexColor("#909090")))
                                      ],
                                    )
                                  ],
                                ),
                                10.verticalSpace,
                                Text(
                                  "Hi there! I'm Robinson, a dedicated and compassionate home nurse with a passion for providing personalized care. With years of experience in nursing, I bring a warm and empathetic approach to every home I visit.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: FontPalette.black_14_400,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 5,
                      effect: ScrollingDotsEffect(
                          strokeWidth: 1.0,
                          activeStrokeWidth: 1.0,
                          paintStyle: PaintingStyle.fill,
                          activeDotColor: HexColor("#845684"),
                          dotColor: HexColor("#C7C6CD"),
                          dotHeight: 6.r,
                          dotWidth: 6.r),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
