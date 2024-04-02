import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  bool acceptCheckingbool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 30.h,
              width: 40.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/02/68/56/00/360_F_268560006_F2fIixDnlVRNGwCyne9EMQJhaAxalKTq.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            10.horizontalSpace,
            Text(
              "Ann Robinson",
              style: FontPalette.black_18_600,
            )
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.routetaskinfoscreen);
            },
            child: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Task Info",
                  style: FontPalette.black_14_600
                      .copyWith(fontSize: 13.sp, color: Colors.white),
                )),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  16.verticalSpace,
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://t3.ftcdn.net/jpg/02/68/56/00/360_F_268560006_F2fIixDnlVRNGwCyne9EMQJhaAxalKTq.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: Colors.black),
                        ),
                        Text(
                          "Ann Robinson",
                          style: FontPalette.black_18_600,
                        ),
                        6.verticalSpace,
                        Text(
                          "Care, Clean & cook",
                          style: FontPalette.black_14_400
                              .copyWith(color: HexColor("#616068")),
                        ),
                        12.verticalSpace,
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: HexColor("#C7C6CD"))),
                          child: Text(
                            "View Profile",
                            style: FontPalette.black_14_600,
                          ),
                        ),
                        80.verticalSpace,
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 250.w,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: HexColor("#F2F0FF"),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                )),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "we're expecting around 10 guests. I'm thinking of a mix of Italian and Mediterranean dishes. Can you accommodate that?",
                                  style: FontPalette.black_14_400,
                                ),
                                const Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "9.30",
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://t3.ftcdn.net/jpg/02/68/56/00/360_F_268560006_F2fIixDnlVRNGwCyne9EMQJhaAxalKTq.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              5.horizontalSpace,
                              Container(
                                width: 300,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: HexColor("#EEEEF2"),
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16),
                                    )),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "we're expecting around 10 guests. I'm thinking of a mix of Italian and Mediterranean dishes. Can you accommodate that?",
                                      style: FontPalette.black_14_400,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "9.30",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            acceptCheckingbool
                ? Container(
                    //  height: 100,
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Divider(
                          height: 1,
                        ),
                        //  10.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    height: 43.h,
                                    width: 43.w,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: HexColor("#EEEEF2")),
                                    child: SizedBox(
                                      height: 1.h,
                                      width: 1.w,
                                      child: SvgPicture.asset(Assets.addicon),
                                    ),
                                  ),
                                  10.horizontalSpace,
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 20.w, right: 20.w),
                                    decoration: BoxDecoration(
                                        color: HexColor("#EEEEF2"),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Type Message..."),
                                    ),
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
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
                          padding: const EdgeInsets.only(left: 16.0, right: 16),
                          child: Text(
                            "Accept Chat from Ann Robinson?",
                            style: FontPalette.black_14_600,
                          ),
                        ),
                        6.verticalSpace,
                        const Padding(
                          padding: EdgeInsets.only(left: 16, right: 16.0),
                          child: Text(
                            "If accepted, both parties can communicate and schedule the service.",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        10.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18, right: 18, bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 48.h,
                                  child: CustomButton(
                                      textColor: "#1F1E24",
                                      color: "#EEEEF2",
                                      title: "Decline",
                                      onpressed: () {
                                        debugPrint("object");
                                      }),
                                ),
                              ),
                              10.horizontalSpace,
                              Expanded(
                                child: SizedBox(
                                  height: 46.h,
                                  child: CustomButton(
                                      title: "Accept",
                                      onpressed: () {
                                        debugPrint("object");
                                        debugPrint("Clicked Accept button");
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
