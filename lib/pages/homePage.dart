import 'package:config_test_flutter/theme%20check/model_them.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../nav_drawerpage/nav_Drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ModelTheme themeNotifier, child) {
      return Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          title: Text(
            "Homepage",
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                }),
          ],
        ),
      );
    });
  }
}
