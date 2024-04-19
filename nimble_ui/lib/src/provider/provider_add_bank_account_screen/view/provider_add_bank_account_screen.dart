import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/heading_and_textform_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/heading_container_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/provider_myprofile_select_dialog_widget.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class ProviderAddBankAccountScreen extends StatelessWidget {
  ProviderAddBankAccountScreen({super.key});

  final beneficiarynameController = TextEditingController();
  final ifcCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    beneficiarynameController.text = "Ann Robinson";
    ifcCodeController.text = "IFC78236418345";
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Add Bank Account",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  1.verticalSpace,
                  HeadingAndTextFormWidget(
                    controller: beneficiarynameController,
                    hintText: "Ann Robinson",
                    heading: "Beneficiary name",
                  ),
                  10.verticalSpace,
                  HeadingAndTextFormWidget(
                    controller: ifcCodeController,
                    hintText: "IFC78236418345",
                    heading: "IFSC Code",
                  ),
                  12.verticalSpace,
                  HeadingContainerWidget(
                    showText: false,
                    heading: "Bank name",
                    data: "SBI",
                    ontap: () {
                      showGeneralDialog(
                        barrierLabel: "Label",
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: const Duration(milliseconds: 300),
                        context: context,
                        pageBuilder: (context, anim1, anim2) {
                          return const ProviderMyProfileSelectWidget(
                            height: 500,
                            selectionList: [],
                          );
                        },
                        transitionBuilder: (context, anim1, anim2, child) {
                          return SlideTransition(
                            position: Tween(
                                    begin: const Offset(0, 1),
                                    end: const Offset(0, 0))
                                .animate(anim1),
                            child: child,
                          );
                        },
                      );
                    },
                  ),
                  10.verticalSpace,
                  const HeadingAndTextFormWidget(
                    hintText: "Enter Ac/no",
                    heading: "Account No",
                  ),
                  10.verticalSpace,
                  const HeadingAndTextFormWidget(
                    hintText: "Enter Ac/no",
                    heading: "Confirm Account No",
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: CustomButton(title: "Save Changes", onpressed: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
