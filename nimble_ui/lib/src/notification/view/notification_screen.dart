import 'package:flutter/material.dart';
import 'package:nimple_ui/src/notification/view/widgets/notification_list_widget.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Notification",
          style: FontPalette.black_18_600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return const NotificatioListWidget();
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: 10),
      ),
    );
  }
}
