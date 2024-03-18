import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/received_request_listview_widget.dart';

class ReceivedRequestTab extends StatefulWidget {
  const ReceivedRequestTab({super.key});

  @override
  State<ReceivedRequestTab> createState() => _ReceivedRequestTabState();
}

class _ReceivedRequestTabState extends State<ReceivedRequestTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const ReceivedRequestListViewWidget();
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 5.h,
          );
        },
        itemCount: 3);
  }
}
