import 'package:flutter/material.dart';
import 'package:nimple_ui/src/main/booking_screen/view/tab_view/widgets/upcoming_tab_list_view_widget.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    //   return const UpComingTabListViewWidget();
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const UpComingTabListViewWidget();
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox();
        },
        itemCount: 3);
  }
}
