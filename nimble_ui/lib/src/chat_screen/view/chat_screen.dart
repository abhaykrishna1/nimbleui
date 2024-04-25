import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class ChatScreen extends StatefulWidget {
   bool acceptCheckingbool;
   ChatScreen({super.key, required this.acceptCheckingbool});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // bool acceptCheckingbool = false;

  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        debugPrint("GET it list");
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "we're expecting around 10 guests. I'm thinking of a mix of Italian and Mediterranean dishes. Can you accommodate that?, doing OK.",
        messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  bool? boolvalueAccept = false;
  @override
  Widget build(BuildContext context) {
    boolvalueAccept = widget.acceptCheckingbool;
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
            Expanded(
              child: Text(
                "Ann Robinson",
                style: FontPalette.black_18_600,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        actions: [
          InkWell(
            borderRadius: BorderRadius.circular(15),
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
            boolvalueAccept == false
                ? Expanded(
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
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.pushNamed(
                                context, RouteGenerator.routeviewprofilescreen);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: HexColor("#C7C6CD"))),
                            child: Text(
                              "View Profile",
                              style: FontPalette.black_14_600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
            boolvalueAccept == true
                ? Expanded(
                    child: ListView.builder(
                    controller: _scrollController,
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    //   physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment:
                                messages[index].messageType != "receiver"
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              messages[index].messageType != "receiver"
                                  ? const SizedBox.shrink()
                                  : Container(
                                      height: 24.h,
                                      width: 24.w,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                "https://t3.ftcdn.net/jpg/02/68/56/00/360_F_268560006_F2fIixDnlVRNGwCyne9EMQJhaAxalKTq.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: (messages[index].messageType ==
                                              "receiver"
                                          ? HexColor("#EEEEF2")
                                          : HexColor("#F2F0FF")),
                                      borderRadius: BorderRadius.only(
                                        bottomRight:
                                            messages[index].messageType ==
                                                    "receiver"
                                                ? const Radius.circular(16)
                                                : const Radius.circular(0),
                                        bottomLeft:
                                            messages[index].messageType ==
                                                    "receiver"
                                                ? const Radius.circular(0)
                                                : const Radius.circular(16),
                                        topRight: const Radius.circular(16),
                                        topLeft: const Radius.circular(16),
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        messages[index].messageType !=
                                                "receiver"
                                            ? CrossAxisAlignment.end
                                            : CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        messages[index].messageContent!,
                                        style: FontPalette.black_14_400,
                                      ),
                                      3.verticalSpace,
                                      const Text(
                                        "9.30",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Flexible(
                              //   fit: FlexFit.tight,
                              //   child: Container(
                              //     padding: const EdgeInsets.all(10),
                              //     alignment: Alignment.center,
                              //     decoration: BoxDecoration(
                              //         //color: HexColor("#F2F0FF"),
                              //       color: Colors.red,
                              //         // color:
                              //         //     (messages[index].messageType == "receiver"
                              //         //         ? HexColor("#EEEEF2")
                              //         //         : HexColor("#F2F0FF")),
                              //         borderRadius: BorderRadius.only(
                              //           bottomRight:
                              //               messages[index].messageType == "receiver"
                              //                   ? Radius.circular(16)
                              //                   : Radius.circular(0),
                              //           bottomLeft:
                              //               messages[index].messageType == "receiver"
                              //                   ? Radius.circular(0)
                              //                   : Radius.circular(16),
                              //           topRight: Radius.circular(16),
                              //           topLeft: Radius.circular(16),
                              //         )),
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       mainAxisSize: MainAxisSize.min,
                              //       children: [
                              //         Text(
                              //           messages[index].messageContent!,
                              //           style: FontPalette.black_14_400,
                              //         ),
                              //         Align(
                              //           alignment:
                              //               (messages[index].messageType == "receiver"
                              //                   ? Alignment.topLeft
                              //                   : Alignment.topRight),
                              //           child: Text(
                              //             "9.30",
                              //           ),
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                  ))
                : const SizedBox.shrink(),
            boolvalueAccept == true
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
                                  InkWell(
                                    onTap: () {
                                      showGeneralDialog(
                                        barrierLabel: "Label",
                                        barrierDismissible: true,
                                        barrierColor:
                                            Colors.black.withOpacity(0.5),
                                        transitionDuration:
                                            const Duration(milliseconds: 300),
                                        context: context,
                                        pageBuilder: (context, anim1, anim2) {
                                          return Align(
                                            alignment: Alignment.bottomCenter,
                                            child: IntrinsicHeight(
                                              child: Material(
                                                  color: Colors.transparent,
                                                  child: Container(
                                                    // constraints: BoxConstraints(maxHeight: 400),
                                                    width: double.maxFinite,
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10))),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(14),
                                                            height: 4.h,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                            Navigator.pushNamed(
                                                                context,
                                                                RouteGenerator
                                                                    .routecreatetickerscreen);
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(16.0),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          14),
                                                                  height: 50.h,
                                                                  width: 50.w,
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: HexColor(
                                                                          "#EEEEF2")),
                                                                  child:
                                                                      SizedBox(
                                                                    height: 20,
                                                                    width: 20,
                                                                    child: SvgPicture
                                                                        .asset(Assets
                                                                            .createtickericon),
                                                                  ),
                                                                ),
                                                                16.horizontalSpace,
                                                                Text(
                                                                    "Create Ticket",
                                                                    style: FontPalette
                                                                        .black_16_600
                                                                        .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(16.0),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        14),
                                                                height: 50.h,
                                                                width: 50.w,
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: HexColor(
                                                                        "#EEEEF2")),
                                                                child: SizedBox(
                                                                  height: 20,
                                                                  width: 20,
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    Assets
                                                                        .locationsvg,
                                                                    color: HexColor(
                                                                        "#772077"),
                                                                  ),
                                                                ),
                                                              ),
                                                              16.horizontalSpace,
                                                              Text(
                                                                  "Share Location",
                                                                  style: FontPalette
                                                                      .black_16_600
                                                                      .copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // height: 200,
                                                          //  padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                                                          width:
                                                              double.maxFinite,
                                                          color: Colors.white,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Divider(
                                                                height: 0,
                                                              ),
                                                              10.verticalSpace,

                                                              //  2.verticalSpace
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 10,
                                                                  bottom: 18),
                                                          child: Center(
                                                              child: Text(
                                                            "Cancel",
                                                            style: FontPalette
                                                                .black_16_600,
                                                          )),
                                                        )
                                                      ],
                                                    ),
                                                  )),
                                            ),
                                          );
                                        },
                                        transitionBuilder:
                                            (context, anim1, anim2, child) {
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
                                    child: Container(
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
                                  ),
                                  10.horizontalSpace,
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        top: 4,
                                        bottom: 4,
                                        left: 20.w,
                                        right: 4.w),
                                    decoration: BoxDecoration(
                                        color: HexColor("#EEEEF2"),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextFormField(
                                      maxLines: null,
                                      maxLength: null,
                                      decoration: InputDecoration(
                                          suffixIcon: Container(
                                            padding: const EdgeInsets.all(10),
                                            height: 20,
                                            width: 20,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: SvgPicture.asset(
                                                Assets.sendicon),
                                          ),
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
                                child: CustomButton(
                                    textColor: "#1F1E24",
                                    color: "#EEEEF2",
                                    title: "Decline",
                                    onpressed: () {
                                      debugPrint("object");
                                    }),
                              ),
                              10.horizontalSpace,
                              Expanded(
                                child: CustomButton(
                                    title: "Accept",
                                    onpressed: () {
                                      debugPrint("object");
                                      debugPrint("Clicked Accept button");
                                      setState(() {
                                        widget.acceptCheckingbool = true;
                                        print(boolvalueAccept);
                                        // if (_scrollController.hasClients) {
                                        //   _scrollController.animateTo(
                                        //       _scrollController
                                        //           .position.maxScrollExtent,
                                        //       duration: const Duration(
                                        //           milliseconds: 100),
                                        //       curve: Curves.easeInOut);
                                        // }
                                      });
                                    }),
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

class ChatMessage {
  String? messageContent;
  String? messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}
