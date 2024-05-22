import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/chat_screen/view/chat_screen.dart';
import 'package:nimple_ui/src/shimmer/widget/shimmer_container.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:shimmer/shimmer.dart';

class ChatShimmerScreen extends StatelessWidget {
  ChatShimmerScreen({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        //   physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (messages[index].messageType == "receiver"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: messages[index].messageType != "receiver"
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  messages[index].messageType != "receiver"
                      ? const SizedBox.shrink()
                      : Container(
                          height: 24.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#EEEEF2")),
                        ),
                  6.horizontalSpace,
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: HexColor("#EEEEF2")),
                          borderRadius: BorderRadius.only(
                            bottomRight:
                                messages[index].messageType == "receiver"
                                    ? const Radius.circular(16)
                                    : const Radius.circular(0),
                            bottomLeft:
                                messages[index].messageType == "receiver"
                                    ? const Radius.circular(0)
                                    : const Radius.circular(16),
                            topRight: const Radius.circular(16),
                            topLeft: const Radius.circular(16),
                          )),
                      child: Shimmer.fromColors(
                      baseColor: HexColor("#D5D5D5"),
                          highlightColor: HexColor("#D5D5D5").withOpacity(0.5),
                        child: Column(
                          crossAxisAlignment:
                              messages[index].messageType != "receiver"
                                  ? CrossAxisAlignment.end
                                  : CrossAxisAlignment.start,
                          children: [
                            const ShimmerContainer(height: 10, width: 230),
                            10.verticalSpace,
                            const ShimmerContainer(height: 10, width: 130),
                            10.verticalSpace,
                            const ShimmerContainer(height: 10, width: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
