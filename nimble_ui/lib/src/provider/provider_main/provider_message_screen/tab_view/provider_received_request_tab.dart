import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_message_screen/tab_view/widget/provider_received_request_listview_widget.dart';

class ProviderReceivedRequestTab extends StatefulWidget {
  const ProviderReceivedRequestTab({super.key});

  @override
  State<ProviderReceivedRequestTab> createState() => _ReceivedRequestTabState();
}

class _ReceivedRequestTabState extends State<ProviderReceivedRequestTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const ProviderReceivedRequestListViewWidget();
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 5.h,
          );
        },
        itemCount: 3);
  }
}
