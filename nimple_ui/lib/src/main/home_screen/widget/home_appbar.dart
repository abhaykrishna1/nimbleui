import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("HomeAppBar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    );
  }
}