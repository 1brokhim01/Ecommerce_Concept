import 'package:ecommerce/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Ecommerce Concept ',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: MyRoutes.instance.onGenerate,
          initialRoute: "/splash_screen",
        );
      },
    );
  }
}
