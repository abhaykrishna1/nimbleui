import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
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
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.seekername,
              style: FontPalette.black_14_600.copyWith(
                  fontWeight: FontWeight.w500, color: HexColor("#C7C6CD")),
            ),
            10.verticalSpace,
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "SeekerName"),
            ),
            10.verticalSpace,
            Text(
              Constants.service,
              style: FontPalette.black_14_600.copyWith(
                  fontWeight: FontWeight.w500, color: HexColor("#C7C6CD")),
            ),
            10.verticalSpace,
            Container(
              padding: EdgeInsets.only(
                  left: 15.w, right: 13.w, top: 15.h, bottom: 13.h),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: HexColor("#C7C6CD"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  serviceTypeWidget(),
                  InkWell(
                    onTap: () {
                      DropdownButton<String>(
                        value: "dropdownValue",
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            //  dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      );
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: HexColor("#616068"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
