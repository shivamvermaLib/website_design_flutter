import 'package:flutter/material.dart';
import 'package:flutter_web_designs/home/home_controller.dart';
import 'package:flutter_web_designs/main.dart';
import 'package:get/get.dart';
import 'package:flutter_web_designs/app_extensions.dart';
import 'package:photo_view/photo_view.dart';

class HomePage extends StatelessWidget {
  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Container(
            decoration: _controller.image.value != null
                ? BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("${_controller.image.value}"),
                        fit: BoxFit.cover),
                  )
                : null,
            alignment: Alignment.center,
            child: ListView(
              padding: EdgeInsets.all(30),
              children: [
                Card(
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () {
                      Get.toNamed(Routes.facebook.path);
                    },
                    title: Text(
                      "Facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
