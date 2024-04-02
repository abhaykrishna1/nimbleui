import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/add_post/view/widget/custom_drop_down_button.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String? dropdownValue;
  // final OverlayPortalController _tooltipController = OverlayPortalController();
  // final _link = LayerLink();

  // final OverlayPortalController _tooltipController2 = OverlayPortalController();
  // final _link2 = LayerLink();

  // final OverlayPortalController tooltipController3 = OverlayPortalController();
  // final link3 = LayerLink();

  // final OverlayPortalController tooltipController4 = OverlayPortalController();
  // final link4 = LayerLink();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          Constants.createpost,
          style: FontPalette.black_18_600,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    Text(
                      Constants.seekername,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "SeekerName"),
                    ),
                    10.verticalSpace,
                    Text(
                      Constants.service,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    CustomDropDownButton(
                 
                      isVisible: true,
                    
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.blueAccent)),
                    //       child: Row(children: [],),
                    // ),
                    10.verticalSpace,
                    Text(
                      Constants.typeofService,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    CustomDropDownButton(
                 
                      isVisible: true,
                   
                    ),
                    10.verticalSpace,
                    Text(
                      Constants.date,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    Container(
                      padding: EdgeInsets.only(
                          left: 15.w, right: 13.w, top: 15.h, bottom: 13.h),
                      // height: 80,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: HexColor("#C7C6CD"))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Friday, 16 December 2023",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15.h,
                            width: 15.w,
                            child: SvgPicture.asset(Assets.calendericon),
                          )
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      Constants.schedule,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    CustomDropDownButton(
                   
                      isVisible: false,
                      title: "Select type (one-time/recurring)",
                    
                    ),
                    10.verticalSpace,
                    Text(
                      Constants.time,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    CustomDropDownButton(
                   
                      isVisible: false,
                      title: "Select Time",
                   
                    ),
                    10.verticalSpace,
                    Text(
                      Constants.location,
                      style: FontPalette.black_14_600.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#616068")),
                    ),
                    6.verticalSpace,
                    Container(
                      padding: EdgeInsets.only(
                          left: 15.w, right: 13.w, top: 15.h, bottom: 13.h),
                      // height: 80,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: HexColor("#C7C6CD"))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Choose Location",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: HexColor("#C7C6CD")),
                          ),
                          SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: SvgPicture.asset(Assets.locationSearch),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Divider(
                  height: 1,
                ),
                10.verticalSpace,
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                  child: SizedBox(
                    height: 48.h,
                    child: CustomButton(
                        textColor: "#FFFFFF",
                        color: "#772077",
                        title: "Create Post",
                        onpressed: () {
                          debugPrint("object");
                        }),
                  ),
                ),
                //  2.verticalSpace
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget serviceTypeWidget() {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 3.h, bottom: 3.h),
      decoration: BoxDecoration(
          color: HexColor("#F0EEFD"), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Care",
            style:
                FontPalette.black_14_400.copyWith(color: HexColor("#1800B5")),
          ),
          3.horizontalSpace,
          Icon(
            Icons.close,
            size: 20,
            color: HexColor("#1800B5"),
          )
        ],
      ),
    );
  }
}
