import 'package:flutter/material.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_message_screen/tab_view/widget/provider_accepted_profile_listview_widget.dart';

class ProviderAcceptedProfileTab extends StatefulWidget {
  const ProviderAcceptedProfileTab({super.key});

  @override
  State<ProviderAcceptedProfileTab> createState() => _AcceptedProfileTabState();
}

class _AcceptedProfileTabState extends State<ProviderAcceptedProfileTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const ProviderAcceptedProfileListViewWidget();
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 3);
  }
}
