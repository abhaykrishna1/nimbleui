import 'package:flutter/material.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/compleated_tab_list_widget.dart';

class ProviderCompleatedTab extends StatelessWidget {
  const ProviderCompleatedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (ctx,index){
      return ProviderCompleatedListWidget();
    }, separatorBuilder: (ctx,index){
      return SizedBox();
    }, itemCount: 1);
  }
}
