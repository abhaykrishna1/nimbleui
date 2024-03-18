import 'package:flutter/material.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/accepted_profile_listview_widget.dart';

class AcceptedProfileTab extends StatefulWidget {
  const AcceptedProfileTab({super.key});

  @override
  State<AcceptedProfileTab> createState() => _AcceptedProfileTabState();
}

class _AcceptedProfileTabState extends State<AcceptedProfileTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const AcceptedProfileListViewWidget();
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 3);
  }
}
