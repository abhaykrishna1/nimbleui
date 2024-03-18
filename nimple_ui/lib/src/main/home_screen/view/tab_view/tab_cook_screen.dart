import 'package:flutter/material.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/widget/grid_view_widget.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/widget/list_view_widget.dart';
import 'package:nimple_ui/src/main/home_screen/view_model/home_provider.dart';
import 'package:provider/provider.dart';

class TabCookScreen extends StatelessWidget {
  const TabCookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<HomeProvider, bool>(
        selector: (p0, p1) => p1.listAndGridBool,
        builder: (context, data, _) {
          return data ? const ListViewWidget() : GridViewWidget();
        });
  }
}
