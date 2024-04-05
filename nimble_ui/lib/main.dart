import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/src/auth/view_model/service_type_view_model.dart';
import 'package:nimple_ui/src/auth/view_model/welcome_screen_view_model.dart';
import 'package:nimple_ui/src/filter_screen/view_model/filter_provider.dart';
import 'package:nimple_ui/src/main/home_screen/view_model/home_provider.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ServiceTypeProvider()),
          ChangeNotifierProvider(create: (_) => WelcomeScreenProvider()),
          ChangeNotifierProvider(create: (_) => HomeProvider()),
          ChangeNotifierProvider(create: (_) => FilterProvider())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nimble',
          theme: ColorPalete.themeData,
          onGenerateRoute: RouteGenerator.instance.generateRoute,
        ),
      ),
    );
  }
}
