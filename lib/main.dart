import 'package:config_test_flutter/RouteManage/routesall.dart';
import 'package:config_test_flutter/pages/homePage.dart';
import 'package:config_test_flutter/theme%20check/model_them.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return GetMaterialApp(
            title: 'Flutter Demo',
            theme: themeNotifier.isDark
                ? ThemeData(
                    brightness: Brightness.dark,
                  )
                : ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.green,
                    primarySwatch: Colors.green),
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.homePage,
            getPages: appRoutes());
      }),
    );
  }
}
