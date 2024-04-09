import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class ClickHereWidget extends StatefulWidget {
  const ClickHereWidget({super.key});

  @override
  State<ClickHereWidget> createState() => _ClickHereWidgetState();
}

class _ClickHereWidgetState extends State<ClickHereWidget> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: IntrinsicHeight(
          child: Material(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(
                        20.r,
                      ))),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              height: 5.h,
                              width: 77.w,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 16, right: 16.0, top: 10.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Reason for Non-Completion",
                                    style: FontPalette.black_18_600,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Close",
                                    style: FontPalette.black_14_600
                                        .copyWith(color: HexColor("#772077")),
                                  ),
                                )
                              ],
                            ),
                          ),
                          5.verticalSpace,
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Express yourself with following reasons!",
                                  style: FontPalette.black_14_400,
                                ),
                                10.verticalSpace,
                                const ResonsWidget(
                                  valueIndex: 1,
                                  title: "Service Provider Communication Issue",
                                ),
                                const Divider(),
                                const ResonsWidget(
                                  valueIndex: 1,
                                  title: "Emergency on Service Provider's End",
                                ),
                                const Divider(),
                                const ResonsWidget(
                                  valueIndex: 2,
                                  title: "Technical Issues",
                                ),
                                const Divider(),
                                const ResonsWidget(
                                  valueIndex: 1,
                                  title:
                                      "I was not available at the scheduled time",
                                ),
                                const Divider(),
                                const ResonsWidget(
                                  valueIndex: 2,
                                  title: "Other (please specify below)",
                                ),
                                14.verticalSpace,
                                Text(
                                  "Additional Comments",
                                  style: FontPalette.black_16_600,
                                ),
                                // const TextField(
                                //   decoration: InputDecoration(
                                //     labelText: 'Please search here ',
                                //     contentPadding: EdgeInsets.all(8),
                                //     border: OutlineInputBorder(),
                                //   ),
                                //   style: TextStyle(fontSize: 25),
                                //   maxLines: 10,
                                //   minLines: 5,
                                // ),
                                10.verticalSpace,
                                Container(
                                  height: 150.h,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      border: Border.all(
                                          color: HexColor("#EEEEF2"))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLines: 10,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  'Enter your comments...',
                                            ),
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              height: 22.h,
                                              width: 22.w,
                                              child: SvgPicture.asset(
                                                  Assets.twoline),
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
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
                          padding: const EdgeInsets.only(
                              left: 18, right: 18, bottom: 18),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: CustomButton(
                                textColor: "#FFFFFF",
                                color: "#772077",
                                title: "Submit",
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
            ),
          ),
        ));
  }
}

class ResonsWidget extends StatefulWidget {
  final int valueIndex;
  final String title;
  const ResonsWidget(
      {super.key, required this.valueIndex, required this.title});

  @override
  State<ResonsWidget> createState() => _ResonsWidgetState();
}

class _ResonsWidgetState extends State<ResonsWidget> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(
          activeColor: Colors.black,
          splashRadius: 1,
          value: widget.valueIndex,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
        ),
        Expanded(
          child: Text(
            widget.title,
            style: FontPalette.black_14_400,
          ),
        ),
      ],
    );
  }
}
