import 'package:flutter/material.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/upcoming_tab_list_widget.dart';

class ProviderUpcomingTab extends StatelessWidget {
  const ProviderUpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const ProviderUpcomingListWidget();
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox();
        },
        itemCount: 3);
  }
}
