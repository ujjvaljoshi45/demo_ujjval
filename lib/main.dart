import 'package:demo_ujjval/services/data_controller.dart';
import 'package:demo_ujjval/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // Init Get
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Get.put(DataController.instance);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Screen Utils For Responsive Design
      designSize: ScreenUtil.defaultSize,
      splitScreenMode: false,
      minTextAdapt: true,
      builder: (context, child) {
        ScreenUtil.init(context);
        return GetMaterialApp(
          // Material App With Get
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
