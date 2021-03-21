import 'package:flutter/material.dart';
import 'package:flutter_web_designs/facebook/facebook_page.dart';
import 'package:flutter_web_designs/home/home_page.dart';
import 'package:flutter_web_designs/server_api.dart';
import 'package:get/get.dart';
import 'package:flutter_web_designs/app_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    Get.put(ServerAPI());
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: Routes.home.path, page: () => HomePage()),
        GetPage(name: Routes.facebook.path, page: () => FacebookPage()),
      ],
      initialRoute: Routes.home.path,
    );
  }
}

enum Routes { home, facebook }
