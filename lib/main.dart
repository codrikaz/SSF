import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';
import 'package:staple_food_fortification/Routes/route_pages.dart';

Future<void> main() async {
  runApp(const MyApp());

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kDefaultHiveBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          smartManagement: SmartManagement.keepFactory, // Bindings factory reinitialized
          debugShowCheckedModeBanner: false,
          title: 'SSF',
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: SffColor.sffMainColor,
          ),
          getPages: AppRoutes.getRoutes(),
          initialRoute: RoutesName.splash,
        );
      },
    );
  }
}
