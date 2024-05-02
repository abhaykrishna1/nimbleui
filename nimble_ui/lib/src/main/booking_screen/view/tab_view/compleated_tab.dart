import 'package:flutter/material.dart';
import 'package:nimple_ui/src/main/booking_screen/view/tab_view/widgets/compleated_tab_listview_widget.dart';

class CompleatedTab extends StatelessWidget {
  const CompleatedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const CompleatedTabListViewWidget();
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox();
        },
        itemCount: 1);
  }
}
